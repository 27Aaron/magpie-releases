cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1187"
  sha256 arm:   "eb2591296df614f856e90d03d58af3557c7189e9446d9e94099cace6ae6b3fe4",
         intel: "a381fc36b6ab00ab0e522e5d3d35bec0717829f873d69a0075448fcdf765cd0f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
