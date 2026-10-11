cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1197"
  sha256 arm:   "b1644ef3f2e380944da821fb16ce35fa579609f6b3fc6f085c49b87fefae701b",
         intel: "1f736c445f33c732ad9f0226436f654f556fa4e236917cda2a71962518b3b8c2"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
