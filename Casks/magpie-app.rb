cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1254"
  sha256 arm:   "b193508393063c892fd0e7eb000bed124d249dac5838ccfc487e7e2a81c452ac",
         intel: "9540163b915b8ebba35e6c9ad6e75cbe7ec1cebe399e19b0bf65a7a22bd51e38"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
