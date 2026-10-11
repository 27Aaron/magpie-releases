cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1194"
  sha256 arm:   "e235afab8ecdb803fdf43ea912558a5ee1c7a05ae20d1c1953b23801fab221d4",
         intel: "21f48d74d6d104255f94f74a332642cb9d228e2ad0e395285d7a8a8b0b5b666c"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
