cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1219"
  sha256 arm:   "7b1542423c1c515241e8ec14143792cc4a6338e4672f17f2cbf5f91353859229",
         intel: "1e98e1694d32b82c82b53c932cea0837be8abaa9cd028b17d30d26f7c7cde537"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
