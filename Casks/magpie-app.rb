cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1274"
  sha256 arm:   "a4955149e31e1e79777f50fe562af715fcaf09edfa7e5470f1a4450e87385058",
         intel: "7af6dfe02248346d3b6da40d364e938343ce588bd5d45cb1416ae220bccb2f06"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
