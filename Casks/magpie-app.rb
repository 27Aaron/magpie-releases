cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1271"
  sha256 arm:   "0b8bdb68630447e45d0054655cd408f3f4b22c7f04e06e4244a7a2cee6bb7bd9",
         intel: "4bf45047d679353efa64fd57daee80d5927632af1369fac40ad2eb49adb99af4"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
