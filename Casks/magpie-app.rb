cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1207"
  sha256 arm:   "85f7ec55cd38130ef1db727314570418781dfc794de5df70f449b7593b061b18",
         intel: "7f2313ad3852b2027aa96339a97c06ff80b09c851fdcd5933f39510d6ad93730"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
