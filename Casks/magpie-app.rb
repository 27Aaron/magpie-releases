cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1221"
  sha256 arm:   "8434557dd8b9929daff8a6ae23fcbee45df0186f851fc3c42b8032e328a17927",
         intel: "076f25783f2fd410c6bf23a0fedabfb1d4a598059abfe75ec5037b808bd65c28"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
