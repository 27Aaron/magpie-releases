cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1247"
  sha256 arm:   "6a8dc62c8fafb10937a6e6f2cc4608382e1758fac0f7e7ede630cc6967460364",
         intel: "1c8e0874a0abcead44fc623c6416286d7ae00bbb31a44147acccc8df9ab754e0"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
