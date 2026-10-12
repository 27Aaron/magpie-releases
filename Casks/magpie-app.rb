cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1215"
  sha256 arm:   "a790da9ebae17352ae92fbc4f1d7a5ca2d9141944446067086dd707b6ab882cb",
         intel: "f0490dc1eee25e6cf1fe1e2c08de4ee4c245135462e0a426335646fe4e634c11"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
