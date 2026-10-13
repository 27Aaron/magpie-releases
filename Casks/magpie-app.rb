cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1224"
  sha256 arm:   "cdaefb927777bbac41b4396f0b812dae6194d35cf935445a419c56f7c8d433e3",
         intel: "e5a8112f2553654b93623c12eaaa17a68bd35b5038607caca831cc6fb59233d4"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
