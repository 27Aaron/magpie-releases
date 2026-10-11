cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1201"
  sha256 arm:   "0ca4335f21f7d0576b6589f196484f5b8f9bea3ff4bcf0fa220305054bb3bc2b",
         intel: "19f92b47944d596f766f5eef1323aa3732e3ca9b86573097b0024c8f68397e38"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
