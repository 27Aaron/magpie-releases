cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1258"
  sha256 arm:   "bc2a26a0232d03dc2e57117ea18dc6589007c3698325e3ee4104f22c9174a58d",
         intel: "8b14c51a6954bb1e1e7d544837e7f8ebbea33ba7d2b62f8f69b2edc6d3a28905"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
