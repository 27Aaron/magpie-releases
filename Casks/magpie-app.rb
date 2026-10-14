cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1240"
  sha256 arm:   "0bdbb5139c6f4b7a623fa554da3cd3d7740c4a368eaf127503d64a6cfea56f62",
         intel: "5d65179c8156983038cf4b3abf599bde48c40cc70188350dd8bd7599b176e1b1"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
