cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1239"
  sha256 arm:   "ed8e5c208e602504834f5cf1ef18c64bb997c1c17441c997db46244b11dfcb22",
         intel: "176f4964830e937072c38d68e3361c21ca3c2721f70c715cac42c5f6638eaaf0"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
