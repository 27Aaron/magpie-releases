cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1256"
  sha256 arm:   "b57b9d7c13cd1e884ec34fb1818b19cb315f2a1d04ef451a1febdad31bc4ba1f",
         intel: "5bf49a14c2f93e2c5bc8b722f857d33502a374cfc1520c3f8b5112bad0d5842d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
