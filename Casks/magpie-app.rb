cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1232"
  sha256 arm:   "f5c55a5e07dccfb9ba6006ec96c1966beb55801ddc9a59e6591c436680b050f8",
         intel: "9a65aa4906c17a2c7f20cafbd704c6245167626a16fe010ebefdb968a06b3a5d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
