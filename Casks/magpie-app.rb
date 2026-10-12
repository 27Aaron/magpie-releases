cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1211"
  sha256 arm:   "1d5562e970f91458d45f21c6a1364230c61ec4bd9d9486f3131f32bb86af7d5d",
         intel: "2ad82f525560b8421d6e54cb6206ed3adb5d39585e634bf45a41c5bc74893dd3"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
