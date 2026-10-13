cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1229"
  sha256 arm:   "5433e729c5faa0800d94663fe2d5c8c52bfd950487c8b7db753a302380854afa",
         intel: "dfb2b197803dd3b3d3040142536f807859be2dfcbc2c1a5d5d89f2ca0a294122"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
