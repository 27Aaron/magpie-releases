#!/usr/bin/env bash
# Move nix/hashes.json to a release of yetone/magpie: the hash of its
# source, and the vendor hash of its go.sum. Both packages build from the
# same file.
#
#   scripts/update-nix.sh            # the latest release
#   scripts/update-nix.sh 0.1.1286   # a version of it
#   scripts/update-nix.sh --check    # fail when behind the latest, or when a
#                                    # hash no longer matches; write nothing
set -euo pipefail

REPO="${NIX_SOURCE_REPO:-yetone/magpie}"
ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
HASHES="$ROOT/nix/hashes.json"
SOURCE_URL="https://github.com/$REPO/archive/refs/tags/v"
# No store path can have this hash, so a build with it always reports the
# real one.
DUMMY_HASH="sha256-AAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAAA="

die() { echo "update-nix: $*" >&2; exit 1; }
usage() { die "usage: update-nix.sh [<version>|--check]"; }

latest_version() {
  local -a headers=(--header 'Accept: application/vnd.github+json')
  if [[ -n ${GITHUB_TOKEN:-} ]]; then
    headers+=(--header "Authorization: Bearer $GITHUB_TOKEN")
  fi
  local release tag
  release="$(curl --fail --silent --show-error --location \
    --retry 3 --retry-delay 5 --retry-all-errors \
    "${headers[@]}" "https://api.github.com/repos/$REPO/releases/latest")" ||
    die "cannot read the latest release of $REPO"
  tag="$(jq --exit-status --raw-output \
    'select(.draft == false and .prerelease == false) | .tag_name' <<<"$release")" ||
    die "the latest release of $REPO is not a stable one"
  [[ $tag =~ ^v[0-9]+\.[0-9]+\.[0-9]+$ ]] ||
    die "the latest release of $REPO is tagged $tag, not v<version>"
  echo "${tag#v}"
}

hash_of() { jq --exit-status --raw-output ".$1" "$HASHES"; }

# With an expected hash the tarball is unpacked and compared against it, so
# a wrong hash is refused rather than answered from the store.
source_hash() {  # $1 = version, $2 = hash to check against (optional)
  local -a check=()
  if [[ -n ${2:-} ]]; then
    check=(--expected-hash "$2")
  fi
  nix store prefetch-file --json --unpack "${check[@]}" "$SOURCE_URL$1.tar.gz" |
    jq --exit-status --raw-output .hash ||
    die "the source of v$1 does not match its hash"
}

# shellcheck disable=SC2016
candidate_expression='
  let
    root = builtins.getEnv "NIX_REPO_ROOT";
    flake = builtins.getFlake ("path:" + root);
    pkgs = flake.inputs.nixpkgs.legacyPackages.${builtins.currentSystem};
  in
  pkgs.callPackage (root + "/nix/package.nix") {
    gui = builtins.getEnv "NIX_GUI" == "1";
    versionData = {
      version = builtins.getEnv "NIX_VERSION";
      sourceHash = builtins.getEnv "NIX_SOURCE_HASH";
      vendorHash = builtins.getEnv "NIX_VENDOR_HASH";
    };
  }
'

build() {  # $1 = gui (0 or 1), then version, source hash, vendor hash
  local gui=$1
  NIX_REPO_ROOT="$ROOT" \
    NIX_GUI=$gui \
    NIX_VERSION=$2 \
    NIX_SOURCE_HASH=$3 \
    NIX_VENDOR_HASH=$4 \
    nix build --impure --no-link --print-out-paths --expr "$candidate_expression"
}

vendor_hash() {  # $1 = version, $2 = source hash
  local log
  log="$(mktemp)"
  # shellcheck disable=SC2064
  trap "rm -f '$log'" RETURN

  if build 0 "$1" "$2" "$DUMMY_HASH" >"$log" 2>&1; then
    die "v$1 built with the dummy vendor hash; the expression no longer reads it"
  fi
  local got
  got="$(sed -n 's/^ *got: *//p' "$log" | head -n 1)"
  [[ $got =~ ^sha256-[A-Za-z0-9+/]{43}=$ ]] ||
    die "v$1 failed before its vendor hash was checked; run the build by hand to see why"
  echo "$got"
}

write_hashes() {  # $1 = version, $2 = source hash, $3 = vendor hash
  local temporary
  temporary="$(mktemp "$HASHES.XXXXXX")"
  if jq -n \
    --arg version "$1" \
    --arg sourceHash "$2" \
    --arg vendorHash "$3" \
    '{ version: $version, sourceHash: $sourceHash, vendorHash: $vendorHash }' \
    >"$temporary"; then
    :
  else
    local status=$?
    rm -f "$temporary"
    return "$status"
  fi
  chmod 0644 "$temporary"
  mv "$temporary" "$HASHES"
}

build_both() {  # $1 = version, $2 = source hash, $3 = vendor hash
  build 0 "$1" "$2" "$3" >/dev/null ||
    die "the terminal build of v$1 does not build"
  build 1 "$1" "$2" "$3" >/dev/null ||
    die "the desktop build of v$1 does not build"
}

check() {
  local version latest hash vendor
  version="$(hash_of version)"
  latest="$(latest_version)"
  if [[ $version != "$latest" ]]; then
    echo "nix/hashes.json is at $version; $REPO is at $latest" >&2
    exit 1
  fi

  # Against the release, not the store: a wrong hash that a cached path
  # happens to answer for is still wrong.
  hash="$(source_hash "$version" "$(hash_of sourceHash)")"
  vendor="$(vendor_hash "$version" "$hash")"
  if [[ $vendor != "$(hash_of vendorHash)" ]]; then
    die "nix/hashes.json has vendorHash $(hash_of vendorHash); v$version has $vendor"
  fi
  build_both "$version" "$hash" "$vendor"
  echo "nix/hashes.json is at $version, the latest release of $REPO, and both packages build"
}

main() {
  [[ $# -le 1 ]] || usage
  local requested=${1:-}

  if [[ $requested == --check ]]; then
    check
    return
  fi
  if [[ -n $requested && ! $requested =~ ^[0-9]+\.[0-9]+\.[0-9]+$ ]]; then
    usage
  fi

  local version current
  version="${requested:-$(latest_version)}"
  current="$(hash_of version)"

  if [[ $version == "$current" ]]; then
    echo "nix/hashes.json is already at $version"
    return
  fi
  if ! jq --exit-status --null-input --arg a "$version" --arg b "$current" \
    'def parts: split(".") | map(tonumber); ($a | parts) > ($b | parts)' >/dev/null; then
    die "refusing to move nix/hashes.json back from $current to $version"
  fi

  echo "Moving nix/hashes.json from $current to $version"
  local hash vendor
  hash="$(source_hash "$version")"
  vendor="$(vendor_hash "$version" "$hash")"
  build_both "$version" "$hash" "$vendor"
  write_hashes "$version" "$hash" "$vendor"
  echo "nix/hashes.json is at $version"
}

main "$@"
