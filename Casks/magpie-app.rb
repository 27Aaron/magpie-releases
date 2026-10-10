cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1175"
  sha256 arm:   "efa0dd942044ea937993a0e95382d40256b785f9718ebd4cd0d083a268ca638a",
         intel: "7247827ba5a754b9b05b66cd4f13253deccd620888667cdec70bc60165327f3f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
