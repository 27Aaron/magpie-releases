# magpie-releases

Builds of [magpie](https://github.com/yetone/magpie). Pushing a `v*` tag
there triggers the workflow here, which builds, signs, notarises and
publishes the release.

Get it from [usemagpie.ai](https://usemagpie.ai) (`curl -fsSL https://usemagpie.ai/install.sh | sh`),
or download the latest from [Releases](https://github.com/yetone/magpie-releases/releases/latest):

- macOS, Apple Silicon: `magpie-darwin-arm64.dmg`
- macOS, Intel: `magpie-darwin-amd64.dmg`
- Windows: `magpie-windows-amd64.exe`, or `magpie-windows-arm64.exe`
- Linux: `magpie-linux-amd64`, or `magpie-linux-arm64` (needs GTK 3 and WebKitGTK 4.1)
- Terminal only: `magpie-cli-<os>-<arch>`

## Homebrew

```sh
brew tap yetone/magpie-releases https://github.com/yetone/magpie-releases
brew trust --tap yetone/magpie-releases
```

(`brew trust` is Homebrew 7's; skip it on an older Homebrew.)

Terminal-only binary, as `magpie` on macOS and Linux:

```sh
brew install magpie
```

The macOS app, signed and notarised, into `/Applications`:

```sh
brew install --cask magpie-app
```

Both are updated on every release, so `brew upgrade` picks up new versions. The app also updates itself, as it does however it was installed; `magpie update` in a Homebrew install says to use `brew upgrade magpie` instead.

## Nix

The flake here builds magpie from the sources of the release
`nix/hashes.json` names, for `x86_64-linux`, `aarch64-linux` and
`aarch64-darwin`. Nothing needs to be installed first beyond Nix itself.

```sh
nix run github:yetone/magpie-releases#magpie       # the desktop app
nix run github:yetone/magpie-releases#magpie-cli   # terminal only
```

Or, in a flake of your own:

```nix
{
  inputs.magpie.url = "github:yetone/magpie-releases";
  # ...
  # inputs.magpie.packages.${system}.magpie
}
```

And on NixOS, with the overlay:

```nix
{
  inputs.magpie.url = "github:yetone/magpie-releases";
  # ...
  nixpkgs.overlays = [ inputs.magpie.overlays.default ];
  environment.systemPackages = [ pkgs.magpie ];
}
```

The overlay builds against your own nixpkgs, so magpie shares its glibc
and GTK with the rest of the system. It needs nixpkgs 25.05 or newer:
the package expression uses the `finalAttrs` form of `buildGoModule`,
which an older one takes for a plain attribute set.

Both packages install the desktop entry and icons on Linux, so `magpie://`
links and the app grid work before magpie has run. They point magpie at
nixpkgs' Bun for its plugins rather than letting it download one; a machine
that would rather magpie manage its own Bun can pass `withBun = false`.

`nix/hashes.json` holds the version and the two hashes both packages build
from. `scripts/update-nix.sh` moves it to a release — the latest by default,
or one named — and builds both packages before it writes anything:

```sh
scripts/update-nix.sh            # the latest release
scripts/update-nix.sh 0.1.1286   # a version of it
scripts/update-nix.sh --check    # fail when behind the latest, or a hash no longer matches
```

The release workflow runs it after the Homebrew tap, so a release moves both
without anyone doing it by hand, and moves `flake.lock` to the nixpkgs tip at
the same time — keeping the pinned one when the tip does not build.
