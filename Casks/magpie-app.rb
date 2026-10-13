cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1226"
  sha256 arm:   "fa2077934e871baca969f76754a17086ec11c59b596d01a17b0865034463e365",
         intel: "129fe73cf8765576cfae50b87581ffd0c600b0195e430510604ff4b41fd1572c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
