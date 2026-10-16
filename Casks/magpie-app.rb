cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1276"
  sha256 arm:   "5d70f5b1d972f6b122c6b1df536bdcaa7e888f2e9b8f4aadf699db3f7f7a3029",
         intel: "ed85e7a9d10be7f96eb38e5ec1d5a7539808e47e68b34a11ac2dca063529aeea"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
