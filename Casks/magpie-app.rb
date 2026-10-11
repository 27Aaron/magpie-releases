cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1193"
  sha256 arm:   "134efbf3f12c6d0c28624f1df53a820454c43f09780ec87c3c9f95292c6d76fc",
         intel: "b45dce88c7e89c06ac1d985ba518d92c7cd9f0e2472d9edc1b0983b9c4145a06"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
