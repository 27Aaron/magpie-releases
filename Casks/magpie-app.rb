cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1242"
  sha256 arm:   "6d9480b715009ea2703f062c20ea66b2fc95e9a3a7d69df88a79751f06f20a96",
         intel: "74bc99bd41234e547dbff3558960b15efda6af2cf5e9f23eb297dbf64192cce8"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
