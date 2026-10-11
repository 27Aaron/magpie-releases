cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1202"
  sha256 arm:   "d3915e75a808c3a3d1c0ca44b3c2e0c620d840282be58ac87d913a18cef6bd4f",
         intel: "b2374f963e6b16c4444752258ae34cb6f7cda44f58168ac53dd7deb5d17ba0b0"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
