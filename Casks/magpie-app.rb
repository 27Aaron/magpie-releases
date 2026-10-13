cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1220"
  sha256 arm:   "8634fa1facb8689e228c5b504b908c9fc83b28ee213446763964d5d80baa5a62",
         intel: "ff41f033655961fe6b4f4d848bd779be62be652d929ba04be990266b5b9976e5"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
