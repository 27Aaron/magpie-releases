cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1186"
  sha256 arm:   "3b492f1118ca164a275c38bb3d36e2ec10bbcd3a55cd6f359b1631793dc5ec67",
         intel: "28b80d6f544035617517b13c11267f2458bcb8fd526156549bf1d237b213ef79"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
