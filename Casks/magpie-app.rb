cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1262"
  sha256 arm:   "d76b41aa3e89eb46a5117c861d71d55279c89652f47f488b3a7ea8c69b94adc7",
         intel: "07f99cd6d63809b70563ef15281c9e7339dce4a2aaf0247af6527440f9415b30"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
