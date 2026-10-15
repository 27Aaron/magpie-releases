cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1259"
  sha256 arm:   "06b736df4a2fa8248dfe0d15ab26fe611768a71f972d79ca1e48a5a104d44349",
         intel: "acbfa36a90308e517aa2799d67cea79d7f3ed0bd56129336ad823e6ef5e0f9bd"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
