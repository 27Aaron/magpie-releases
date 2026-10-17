cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1285"
  sha256 arm:   "10ef00695cd28664c5e1d7c45cf00493ff31a09e9bba2b10db4ea487c650138f",
         intel: "c221519e540c1eb86a61948735ddfa8b42c313f2cafb8cde611d17df56708dcd"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
