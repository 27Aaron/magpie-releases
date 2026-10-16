cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1269"
  sha256 arm:   "11bc3e612285976d4153171c0c90df2e8339404e0548cf754e17a5eb6a61d0b2",
         intel: "c54643b18d287f82cf79e72c78d09234ec9969a8c6bfe6ac0085db07b0b70e03"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
