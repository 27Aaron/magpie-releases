cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1275"
  sha256 arm:   "103c4e618173cdfe4243f9946def75982b71ede87be14fd955a2dcee6bf18db2",
         intel: "f576a5392ff627b3ac09dba2db4af7ade3515dc5c148459da10cb433322dbf91"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
