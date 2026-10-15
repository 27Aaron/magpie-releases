cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1263"
  sha256 arm:   "b1f5b9fdd25295ce320a46c361b483e498084a26907f83064c2ff27083ed9f35",
         intel: "6935c3dcc18222f543d101b1945dee5b92970cec40c6738508c4a1414ff64fd7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
