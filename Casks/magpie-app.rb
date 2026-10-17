cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1278"
  sha256 arm:   "d38a0ea82969a3a3965e1b6ede4699d173c6e082e61f1bc55baf7f8fdd5f6fa3",
         intel: "d58db03dea5bf3fb51769cceb9166cdfa7f64c53fd580b6ae8e7c9bce0e27afc"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
