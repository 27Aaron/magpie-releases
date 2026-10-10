cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1170"
  sha256 arm:   "7ee886544b6a075204a81ba22bf447bb3c3baab2d00840f4b0dda925eb9cd808",
         intel: "43ce6f1f1365d5266aa4285fdc3cde0a9320b7192fa4382cc427a603c8f0205d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
