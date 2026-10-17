cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1281"
  sha256 arm:   "1c8c048872de7c23ff217c91bcc3c6854f200e140f1452433964fe0918a51730",
         intel: "fb350e5c86a87a5ca5ac30f8d5c1615f7a10f80dcbbfeb2acb6fa2c712bf554e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
