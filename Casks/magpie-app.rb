cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1217"
  sha256 arm:   "1b66caa6bd802d6830521a13f2f08ba941c66221b2bf4b9508fbb7f87223f1de",
         intel: "c0879d2aceb38abaf4ad5847a0eef9ed4611ee8ac051ee8bd48af626e6b27e30"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
