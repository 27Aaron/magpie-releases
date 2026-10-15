cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1251"
  sha256 arm:   "fb0c70b50e5e5105a641e750566ef69d056f1d8d7a852811d2b09e7e56301c60",
         intel: "48fb870a9f067ea3bbe0008679365b6a07b42b44603d2a837f98992b661c607d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
