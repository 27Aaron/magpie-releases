cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1188"
  sha256 arm:   "8a99afe4fac40b40b1e325820d1027fde2e330d86005b7219242262f836306ec",
         intel: "7155cf6b3accb5758a89751e4ffe1162bfd98e5e8fba23ac03646b22d4622274"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
