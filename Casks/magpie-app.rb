cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1176"
  sha256 arm:   "c0fc9c21fc77e4842fc8041049ed3c55c5b1fdc1500e75a81a575a825d864b9a",
         intel: "8649535eab6da9fefeaf46ebfe91bdb53683c1072110102f88012327671fc3c0"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
