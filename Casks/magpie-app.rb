cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1270"
  sha256 arm:   "a21bf347d4db469d2a0d439d9549aa6fb296569a1002feeb83eb40a69f5511aa",
         intel: "9215bac729d6da2fc9f172fc3168b9f4b425d92b2ad16070ce89384bb32954b4"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
