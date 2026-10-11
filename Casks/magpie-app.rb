cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1182"
  sha256 arm:   "fb3909ccd841a9fe390d570636683c3a15ee27054123305418d6988e8d984926",
         intel: "1368c41169978ce427d64fb4f165ff679cff42ebf3a0eeb7f26584d1e7906041"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
