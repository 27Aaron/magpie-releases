cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1266"
  sha256 arm:   "1ec5af66f21e9f7b63ec1d1575dffc14daf1e3cc5ca667f547a1e3bae448a23a",
         intel: "afa65a1d619bc0f77fd3876192bad163a8cc3d3285074063e654049388501ca7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
