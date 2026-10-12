cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1216"
  sha256 arm:   "8c39fc081fac2bda6e0c7febc6f080ba74efb36d43b6c3107c1cbcbe91613a5a",
         intel: "69306f4fd795e128aea6101a8b98ded0e043d7bafb0e586ab6a6e18648836a78"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
