cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1273"
  sha256 arm:   "26f26caca72d2adde008a4e18fa9e9f781b64796926893626e19cdc92884b75d",
         intel: "c5c17a88639b12ab00119f531c586f378e0dac85824f7254def46a019a49492e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
