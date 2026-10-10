cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1173"
  sha256 arm:   "0fb4eb76aee06a8da11cfc727a746941d6324aea7b21e9cb4f6d14923f7cd40c",
         intel: "ba14c0b441f66da8e68572de1176af3322aa19755f5dbcbec665e0faa7df4571"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
