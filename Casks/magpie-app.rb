cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1169"
  sha256 arm:   "86ad86189aa98a3af80606567687cb2eea5ca76beded7894b217d3f9e2186391",
         intel: "f8337896beb8516fc43d6c577cd837bf9883c25277fb5620ce0a0e9941fd0bf2"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
