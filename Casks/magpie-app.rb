cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1183"
  sha256 arm:   "096e4598d8c3b9e64e117ad10c10055d58c3944042f65603c320b6bfb91dd979",
         intel: "3769b7934d37b4ca665c3afebb4053639d6e1bbf3e9f1b861f1cfdefc6335bbf"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
