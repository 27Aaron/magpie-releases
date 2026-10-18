{
  lib,
  stdenv,
  fetchFromGitHub,
  buildGoModule,
  pkg-config,
  wrapGAppsHook3,
  gtk3,
  webkitgtk_4_1,
  desktop-file-utils,
  xdg-utils,
  bun,
  makeBinaryWrapper,
  # Name nixpkgs' Bun instead of letting magpie download one: what it
  # downloads is a glibc build, which a NixOS cannot start.
  withBun ? true,
  # false builds the terminal-only magpie-cli: no cgo, the `nogui` tag.
  gui ? true,
  versionData ? builtins.fromJSON (builtins.readFile ./hashes.json),
}:

buildGoModule (finalAttrs: {
  pname = if gui then "magpie" else "magpie-cli";
  inherit (versionData) version;

  src = fetchFromGitHub {
    owner = "yetone";
    repo = "magpie";
    tag = "v${finalAttrs.version}";
    hash = versionData.sourceHash;
  };

  # Both builds share go.sum, so they share this hash.
  vendorHash = versionData.vendorHash;

  subPackages = [ "." ];

  env.CGO_ENABLED = if gui then "1" else "0";

  # The Makefile's TAGS. `gtk3` picks GTK 3 and WebKitGTK 4.1 over Wails'
  # default GTK 4 and WebKitGTK 6.
  tags =
    if gui then
      [ "production" ] ++ lib.optionals stdenv.hostPlatform.isLinux [ "gtk3" ]
    else
      [ "nogui" ];

  # `magpie version` prints this, and update.Released() takes a tagged
  # build as one that may update itself.
  ldflags = [
    "-s"
    "-w"
    "-X main.version=${finalAttrs.version}"
  ];

  nativeBuildInputs =
    lib.optionals (gui && stdenv.hostPlatform.isLinux) [
      pkg-config
      wrapGAppsHook3
      desktop-file-utils
    ]
    ++ lib.optionals (!gui && stdenv.hostPlatform.isLinux && withBun) [
      makeBinaryWrapper
    ];

  buildInputs = lib.optionals (gui && stdenv.hostPlatform.isLinux) [
    gtk3
    webkitgtk_4_1
  ];

  # The upstream tests drive a real GUI, a real keychain and real agent
  # configs; doInstallCheck runs the installed binary instead.
  doCheck = false;

  # magpie writes a desktop entry and icon into $HOME on first start
  # (internal/gui/scheme_linux.go), which a read-only store cannot take
  # and a store path would outlive. Install them here instead.
  postInstall =
    lib.optionalString (gui && stdenv.hostPlatform.isLinux) ''
      install -Dm644 internal/gui/icon-256.png \
        "$out/share/icons/hicolor/256x256/apps/magpie.png"
      install -Dm644 internal/gui/icon-1024.png \
        "$out/share/icons/hicolor/1024x1024/apps/magpie.png"
      install -Dm644 build/icon/magpie.svg \
        "$out/share/icons/hicolor/scalable/apps/magpie.svg"
      install -Dm644 ${./magpie.desktop} \
        "$out/share/applications/magpie.desktop"
      install -Dm644 LICENSE "$out/share/licenses/magpie/LICENSE"
    ''
    # What `make app` does: the URL scheme, autostart and self-update all
    # look for a bundle.
    + lib.optionalString (gui && stdenv.hostPlatform.isDarwin) ''
      app="$out/Applications/magpie.app"
      mkdir -p "$app/Contents/MacOS" "$app/Contents/Resources"
      mv "$out/bin/magpie" "$app/Contents/MacOS/magpie"
      ln -s "$app/Contents/MacOS/magpie" "$out/bin/magpie"
      cp build/darwin/magpie.icns build/darwin/Assets.car \
        "$app/Contents/Resources/"
      substitute build/darwin/Info.plist "$app/Contents/Info.plist" \
        --replace-fail '@VERSION@' '${finalAttrs.version}'
      install -Dm644 LICENSE "$out/share/licenses/magpie/LICENSE"
    '';

  # wrapGAppsHook3 reads gappsWrapperArgs in preFixup.
  preFixup =
    lib.optionalString (gui && stdenv.hostPlatform.isLinux) ''
      gappsWrapperArgs+=(
        --prefix PATH : ${lib.makeBinPath [ xdg-utils ]}
      )
    ''
    + lib.optionalString (gui && stdenv.hostPlatform.isLinux && withBun) ''
      gappsWrapperArgs+=(--set MAGPIE_BUN ${lib.getExe bun})
    '';

  postFixup = lib.optionalString (!gui && stdenv.hostPlatform.isLinux && withBun) ''
    wrapProgram "$out/bin/magpie" --set MAGPIE_BUN ${lib.getExe bun}
  '';

  doInstallCheck = true;
  installCheckPhase = ''
    runHook preInstallCheck
    export HOME=$(mktemp -d)
    "$out/bin/magpie" --version | grep -Fx "magpie ${finalAttrs.version}"
  ''
  + lib.optionalString (gui && stdenv.hostPlatform.isLinux) ''
    desktop-file-validate "$out/share/applications/magpie.desktop"
    grep -F 'Exec=magpie %u' "$out/share/applications/magpie.desktop"
    grep -F 'x-scheme-handler/magpie' "$out/share/applications/magpie.desktop"
    test -f "$out/share/icons/hicolor/256x256/apps/magpie.png"
  ''
  + lib.optionalString (gui && stdenv.hostPlatform.isDarwin) ''
    app="$out/Applications/magpie.app"
    test -x "$app/Contents/MacOS/magpie"
    test ! -L "$app/Contents/MacOS/magpie"
    test "$(realpath "$out/bin/magpie")" = "$app/Contents/MacOS/magpie"
    grep -F '${finalAttrs.version}' "$app/Contents/Info.plist"
  ''
  + lib.optionalString (stdenv.hostPlatform.isLinux && withBun) ''
    grep -q ${lib.getExe bun} "$out/bin/magpie"
  ''
  + ''
    runHook postInstallCheck
  '';

  # Same line for both, as the Homebrew formula and cask have.
  meta = {
    description = "Pick the model each AI coding agent on your machine uses";
    homepage = "https://usemagpie.ai/";
    changelog = "https://github.com/yetone/magpie/releases/tag/v${finalAttrs.version}";
    license = lib.licenses.mit;
    mainProgram = "magpie";
    platforms = [
      "aarch64-darwin"
      "aarch64-linux"
      "x86_64-linux"
    ];
    sourceProvenance = [ lib.sourceTypes.fromSource ];
  };
})
