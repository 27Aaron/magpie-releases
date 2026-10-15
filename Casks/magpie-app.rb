cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1255"
  sha256 arm:   "dd53452dbd9e242f42082202cc1cc16d28c006f9824410c306fa7046a5e6fe9b",
         intel: "579b8d90612838a9ed043f3efe89b72c65a68609863d41e81f921250249d315e"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
