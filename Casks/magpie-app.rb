cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1283"
  sha256 arm:   "54629e69e0124d5502a60ffcb4abddd28e50ab3d4a48d64dfc5de9af50553e8c",
         intel: "4096732ec2163b85751c8a2a6c55002f5eca2fca502f63a89782168b145c5573"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
