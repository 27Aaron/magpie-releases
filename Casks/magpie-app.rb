cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1204"
  sha256 arm:   "490b2a415aa7f29bb9c84a784ca7932c7b7bdf2ff8778f947f572604e2f77f35",
         intel: "809cc13e31eb1b362590a5ada99bcba1dd4f29e85b0f83290abc00acf6dab580"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
