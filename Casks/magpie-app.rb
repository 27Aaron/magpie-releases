cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1205"
  sha256 arm:   "5b996223651d4474ff85eb7240515ebaaa0e1f612fbdb826dc33774ad0a0de07",
         intel: "e60dc0b800905aeba5b10bc2400262705a4daf199d945f2c5d46a51e04cad0ee"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
