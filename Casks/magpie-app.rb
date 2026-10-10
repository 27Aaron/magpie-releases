cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1172"
  sha256 arm:   "3123a314999601a476836fbbc29e8dd4fdf1c7f588c1e6cb9c97649741c286e5",
         intel: "2877689248baa86f5eb4490a8e392dadc75662295a09ff0221daa6f03a410cc1"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
