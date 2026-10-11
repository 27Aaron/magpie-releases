cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1199"
  sha256 arm:   "1b90c0aaf271fb7988e08f642dff180f4c899b7e5bd23695bd1890c069550440",
         intel: "a50072aedf1bf607dc497bfebf9c018e71882863249dfebc95acbbc44dea22a7"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
