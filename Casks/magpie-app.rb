cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1279"
  sha256 arm:   "dc851543a00fc5c45168211b10627d99609087c2df8a7dc440d902f3e1e8d3ab",
         intel: "7a62d593d551eaf0304f9a652dfec15a60f68344fff4c199c4a1c33b01c45200"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
