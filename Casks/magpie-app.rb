cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1181"
  sha256 arm:   "fce8b6f348d5dfad434c18010a8b6f1f5939c9d27943f58bb5a59c156a0ea14f",
         intel: "c1c8e7a025112dc60f361d5ff0a353028a2fb5e36585653b9ad90de8a920a580"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
