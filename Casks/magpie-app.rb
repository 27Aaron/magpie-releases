cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1178"
  sha256 arm:   "093cf1eff3c440eed776fe18e73018a333c723006e952b0b7214a8e22f7b90c2",
         intel: "5402de63141a513abeb01e05c9d4762cbb5d3aebbd15c98b16d7ce22373b7369"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
