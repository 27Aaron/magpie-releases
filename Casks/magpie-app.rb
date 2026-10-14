cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1241"
  sha256 arm:   "e51540a61b948d50dfdbd079fa6e6172a5824ec8e3baf295c2c527db53a00a49",
         intel: "24cd980cbefd1d5b53954cf556dd9a52d988f49e6d664feb46c9c49906052462"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
