cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1282"
  sha256 arm:   "cea39110f259c09eacc9aea145373a8fb0dcef2a643f1cab9e13a450c127d41b",
         intel: "0f3a6d40da9ebfe46df0eb312c279a0115634572e3cff7ec2926bb869d063768"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
