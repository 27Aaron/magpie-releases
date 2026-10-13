cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1225"
  sha256 arm:   "cbb6cabd318929c9e53699825b11a8000ab865ff2b73f44b3c5d7a8895dfdd79",
         intel: "a6ee32bb24c20310fbb02f40f16d9a2419bfbf8dbd77c0e8faf3f0be8249fdc9"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
