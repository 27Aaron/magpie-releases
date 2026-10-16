cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1264"
  sha256 arm:   "bd9d8031d94fbbf237811591beed84c80ddf18a60c72e3ed00b3079bc3547e7b",
         intel: "db83aeeba793abc9be07375310fc207e919dabdec5c45c3471e715d3c001327c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
