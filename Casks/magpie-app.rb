cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1227"
  sha256 arm:   "f18b2a0771ce3da29777f264a76133050591dc86667a5f2115139a73a7dc1431",
         intel: "8c8cf5813a5c187b06de026877837cf2894a3b3fbbd6fc625cc5212cfcf605c3"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
