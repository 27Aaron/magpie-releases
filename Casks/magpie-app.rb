cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1230"
  sha256 arm:   "762b472c1e80b93e1677e230b9314906b10e2e7426eb3cc75b1c70f1a00e6eb5",
         intel: "008441ae704b6943a5b2bf73707c8559ff3fc921cc8714dc56f19a2181751032"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
