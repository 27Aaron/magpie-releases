cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1195"
  sha256 arm:   "10c3480fdbd2887ea6530470c19f9c025d803b92fd47aa2215fe6f1be50f2aaf",
         intel: "61619c0ff1ea14ec4298092775919c230fe68eb6584b8ca29d02c5bf284a8921"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
