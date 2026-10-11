cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1189"
  sha256 arm:   "b5b4026a11701b9b601088dea85ce4faaa012b947a279c97802990f7ed4cabdb",
         intel: "acca763265c4800a22e0fe31c29e40437cd2745cce5e57af7a07911af546bfbb"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
