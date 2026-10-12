cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1212"
  sha256 arm:   "78718227960e7a31cd26226e97b7a18b8b8c4d1b023619b683d2ca1e9df9704e",
         intel: "d86277558bbae8d0516a810a2cd574e25f16da51fc7485c6fa32d5dd953bd3fe"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
