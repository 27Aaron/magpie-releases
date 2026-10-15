cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1250"
  sha256 arm:   "2cb7046a5f35fba6c2230e1952ac607b65518c620d8bc7755178cbd5e10a6c13",
         intel: "4bb7cc25271c7600b4709efb3e8146bea6769a913976df4737c9bef124daa49f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
