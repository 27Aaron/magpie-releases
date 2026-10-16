cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1277"
  sha256 arm:   "9e398d56b470418e34704332e1d9739884b64803011c1ee7af1daa4ccb6eeda4",
         intel: "8d3a334b49e8dfd4e4fcca730efd637ca9eeb34cccb83d52fc3d268c54d4bf2f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
