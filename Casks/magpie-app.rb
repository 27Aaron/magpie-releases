cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1286"
  sha256 arm:   "6bfedf14e0945feb4e117c573d35c85e0d84f6f5234852856d043386343b202b",
         intel: "1bca45fc5cfd81a78793eb09d3f9e85ec2e46d3d5a7a208b1558d808304d561f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
