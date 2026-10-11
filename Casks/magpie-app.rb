cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1190"
  sha256 arm:   "3c8d2544f1430ecb64f989db66147a0125b5c286560f64cf08d2f1754b3843cb",
         intel: "a7264838a8713f5825af9c5a237a6001c683f8763b43ea3ae6cc67d703089f82"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
