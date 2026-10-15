cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1246"
  sha256 arm:   "e6d077a29f51bc244dc0744d34dbe0c616e4458c330b2957fb132cdf233d6962",
         intel: "d7f3d7a84d92ff37bb855296df374e64ec4ed1e3d234520729f0e2e24e3262b9"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
