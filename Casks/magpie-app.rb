cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1253"
  sha256 arm:   "77a0c1385b9aa5032fdd56e06c872e1cebbbeef7e823fe9f282d4d459405ee70",
         intel: "a6404606274c734512e5a0aa300f42a976d2a1f6a7b80544fad80a06f84d774f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
