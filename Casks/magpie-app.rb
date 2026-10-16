cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1272"
  sha256 arm:   "b124646184ffee906c7bd2c38b69556f876236ee614d29123877013fb02144a1",
         intel: "59d86cc15e05f99e19ec8e523334712954f006b54b0b75946f4bcffffc74ca2f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
