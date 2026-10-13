cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1228"
  sha256 arm:   "f3395db3ac7f0a4667b3beeb91bdd337470b31fbb27f92d42f78a38e9eef4c66",
         intel: "a2ef847436bdf281d58b07225fede42c632806f5cd8c3a236b2a64c6d768a8aa"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
