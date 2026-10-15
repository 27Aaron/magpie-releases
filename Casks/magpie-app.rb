cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1257"
  sha256 arm:   "0ff8950cba435b69fc165822fff72c3d36dcd4c69c516f8f557d33ef6eb9e3a9",
         intel: "2e8b64cc9237514c2e96f24e48e98f2b305e1c4d4d29e88c2538a424586bc10a"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
