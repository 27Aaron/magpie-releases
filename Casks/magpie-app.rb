cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1171"
  sha256 arm:   "119fd8a7ea06d3dda9f177f68cd6f012d557f8ed9fc16b97eccdff039ed9c2c2",
         intel: "9b1f1f88e18d6aec6307593fcf891e23eb04241cb4a7d3a3767ca7e2660813f8"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
