cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1265"
  sha256 arm:   "947a6234873f5dac715cbd5d00d4023af7bdc1e4ea1c4dd01c65c6121e1bf393",
         intel: "926f1d0a3f25bd1e68dc71e0778d9da92f369f1d8559a47ed04bbb44e5362628"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
