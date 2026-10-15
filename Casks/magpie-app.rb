cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1245"
  sha256 arm:   "8a7f6da8af740844814aa733c6dd1b60d9af4845584455df4dd22a1f48ccc2e2",
         intel: "c4c86fa802cd34a8a19e19fb60b3ee45db357e89d1a84adf3c8b8e4f6a6f1857"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
