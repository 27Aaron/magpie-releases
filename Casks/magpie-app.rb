cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1222"
  sha256 arm:   "118dd0664609c667fe4e0e6ba0ca07bd13a5323b8cbf8bb659d5ae51be3cbedf",
         intel: "cef9b46225e529abdb88f5dfb98923576cae58ceda6b784817c2842c87aec1d5"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
