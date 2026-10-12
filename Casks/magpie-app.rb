cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1210"
  sha256 arm:   "b96d1510d97150bbd4e79a8c466e4f290d086aa4d4ae8cf17c6b9838040c9c6d",
         intel: "339399b5d332bb8b45102202223969369066a450de92633f8d3368a59d46e7e4"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
