cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1203"
  sha256 arm:   "df569c74b1d7da69055c207b68275ae006715862f58ca13f0a488fa01c15741b",
         intel: "1bf8a7e90e7322d0e5a1ef478ac685dca76391b4f95d7daa92c63cfc5993abf2"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
