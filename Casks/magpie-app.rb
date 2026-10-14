cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1237"
  sha256 arm:   "303f4fb40b4389b08f63707693e1e141481582c11c531464585b37ef73fbd0dd",
         intel: "9b1ded292a47436a864ce4fe5862cb827a715fb384eedad157a12d6e6e931339"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
