cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1252"
  sha256 arm:   "fe2393c35efe5cab636c7dea67c03ff4de965c3978d530f1e83facde4bcd4c80",
         intel: "69dae2bbc343c3e446aebc1354f180c9a64abd740f709b92d70bd7097164cf12"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
