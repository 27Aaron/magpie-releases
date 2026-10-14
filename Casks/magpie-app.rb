cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1238"
  sha256 arm:   "45d6f7c97cd8f6437a1cf86549d7b4fbd837ca8c6adfc384a08b8f92f82d5bc9",
         intel: "111c0cefd114c61ffc2a22eeeb74a1b76a85e9171b44c5d78651500958e5d6db"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
