cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1208"
  sha256 arm:   "785b2275f988a2f3234bcad64d9f2fa1362c348f2adbbf82dd0194fd798f3c31",
         intel: "6cde79943e858a8c58c7edf5619508f6c343aa311332e1fcce42a02f356e8a64"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
