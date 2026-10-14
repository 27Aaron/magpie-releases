cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1243"
  sha256 arm:   "7863f56fbdd45337391f3ff31f7b25fbe32836961a759f5b3e46e0e800028306",
         intel: "2fd7526b3d84bfc40105453cf4487d7da4bfc1d68c05436614fa8749f3d9370d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
