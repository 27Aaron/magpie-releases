cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1223"
  sha256 arm:   "2e28df3f2502c49df41dc535db363424aef45b450eee050ef7d55b082faccd64",
         intel: "34e5b190877185df8a989af666a901197f6f90d794833ae747283773df2816f7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
