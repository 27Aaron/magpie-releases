cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1174"
  sha256 arm:   "23c512627ae76f5d3685c55c04e6a532b48d2bc917f841189bd6ed8282c4c4b2",
         intel: "b3f1ccc0d1de0f069e4f58b35b3bb30146d61f6421f33993755860b78a93f88f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
