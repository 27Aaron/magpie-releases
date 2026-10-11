cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1177"
  sha256 arm:   "9280c476c187d641fe616daaf760021e4faa536abfb509fca837089e111cc9f4",
         intel: "7e60063f9feeec1e37fc4638f705bf2d089f1f600480dfe77ece8b0a0d100a16"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
