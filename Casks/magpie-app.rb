cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1260"
  sha256 arm:   "3f1d431fd54183dc6b0a6300edd968b5db487f257ac6e50531434c838b097906",
         intel: "45ba3ebce01fb46653bf42f42cc1905f7e19203d45465a1634db819e0ded07c5"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
