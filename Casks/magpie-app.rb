cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1191"
  sha256 arm:   "a92e18d20fa7abd97d2e7c2cb50ed00a5074458ef4467a20f4cba92b8eaaa124",
         intel: "ec099c7243125d007643c8a07754b532adb15fbc6bc60ad5b1980e6ac7ac9df9"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
