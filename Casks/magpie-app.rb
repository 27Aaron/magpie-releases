cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1196"
  sha256 arm:   "120ec130de57656767d388a76cf0f4bde0f46b8b4eac7bb08542f3d9c5cfb6e4",
         intel: "7d26c9ffef5c9d44735691213d215e6907a504e15ee4ea5128b1e04ca29d8e4d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
