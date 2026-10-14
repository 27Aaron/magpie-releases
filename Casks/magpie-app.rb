cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1233"
  sha256 arm:   "b434ae556d19e6e2664fdc333f95a59f9af6dd07578286debfce0fdd171542d5",
         intel: "0b2ef64a87433577cb512c57a0ebdab464223aba230a16650113848d187a8052"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
