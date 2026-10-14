cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1234"
  sha256 arm:   "e33e0c18d133ce42b59d54c283d2ee670d4c84b52c46abfaae67360f6ca04c1e",
         intel: "1e3814daf4bf0fa9c2d4e1f7940c6da0021db3d5c56fd0ca88530e0adbeca599"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
