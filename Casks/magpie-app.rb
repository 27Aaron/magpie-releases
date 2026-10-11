cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1192"
  sha256 arm:   "838195c8841f5f40b522b0c295686dd99a774950580d00ff0748319ad72ce280",
         intel: "ade1bdbf496e023df71f9fdf9cc5efc6fcbf77b72ba99650b2d718a7ea683860"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
