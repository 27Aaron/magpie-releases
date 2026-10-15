cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1249"
  sha256 arm:   "7d83b0e73cab8411c9cf4978060703fa08b50196e7b1fd158b437d9d1b383f5d",
         intel: "4c751fd3c01f7e316de33b8b000eac9b54f08ca687b79df67daf7514ba3f9876"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
