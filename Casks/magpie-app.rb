cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1179"
  sha256 arm:   "a6f28572d20ec8945f73d9859d201fbcc1a7361899568b86c5847e253a9c3c97",
         intel: "6dff677e9628c2715941bd1629c48c1c6dd56754014dd35eda336b5d19939533"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
