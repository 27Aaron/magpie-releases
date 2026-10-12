cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1206"
  sha256 arm:   "5c846590221e81fb5ae2bed4b91641ea881b3a5b4a51c3d3867df04209c2d121",
         intel: "652dcd28e9ac325f53c64aec307d936d4124b2093bdcc366889e493abd0b3d01"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
