cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1244"
  sha256 arm:   "e856cb9e196dc586111ae0bb96c64c0a1b3058d5a3c3dbf443bec3bc3a2828e9",
         intel: "fb94881ebe842429b842ec30393e058437990fa74026154ccff88531d2a5e892"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
