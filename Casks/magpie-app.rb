cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1268"
  sha256 arm:   "f77769118c3192d2f5ddfcc3a3e2041ff72329b692fb3a96991bf670ee840c0c",
         intel: "81362f31f585cfe1be30fd878d8032d422f627b659dde57feefd1aa73a43799d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
