cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1185"
  sha256 arm:   "56cd0fde554759f9e525be5bbc7d351f77a22c81e88c92ba034539d41f745774",
         intel: "86a9fb15a11935a0408345cdc260a4d51908d40448b148eeff7080a416432fbb"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
