cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1180"
  sha256 arm:   "5767c6a4246d51647f38febf77cf99c135d39df9b77d42db9d0bab52bdfb1b87",
         intel: "0e6e61f8756f9302e2393a21666c0c104b2c52e0e3eb055ce929d4c69d07089a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
