cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1267"
  sha256 arm:   "3ec5a5dccb6e1a9cdbfa23560df18f3147871cf4d17cd9b252c94e81423b810d",
         intel: "890b77d80852d3ee24e1ff6469d377a7bb4ce8c985ce108aa3e4f99a0aaefa6c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
