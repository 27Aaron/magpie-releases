cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1280"
  sha256 arm:   "1e8b5a09a22fd6ce5ee8d79fc2e901d1f3cb1527c8c974f5fe6a02d4f5c4f602",
         intel: "e29265167927d02594b591d0a205c8d3601cc033d96a73b45cefc1a542525b14"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
