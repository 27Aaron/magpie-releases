cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1198"
  sha256 arm:   "da88a8ccf4a1541c961654352f42bc064b5363111e10f445346b509dfe540161",
         intel: "af6ea4a975d6e619a2b2ee0f8d144e4a6fc1daa5a3c3ee293ad3c152082919fa"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
