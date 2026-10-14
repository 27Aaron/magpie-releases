cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1236"
  sha256 arm:   "1310134ffcf273618f19eec1648f8074762f888d92e2968430f5643af847b3c7",
         intel: "b902b5e0cbc26614d008c8dfd4752045d8a1f52392c54dc163619f9fd93af419"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
