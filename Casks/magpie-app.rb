cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1261"
  sha256 arm:   "9f55dc1beaf9e226d8db6edd1557717b2a05c3abb80d51436c5714306f071744",
         intel: "4662e5e870849383ca261300ea7668f1c1ee866c2881d1abad3f6b9a5305a2c0"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
