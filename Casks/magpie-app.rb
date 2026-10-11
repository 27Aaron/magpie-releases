cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1200"
  sha256 arm:   "2ca0b0c902a958074da42e332f506d61e485d95ae19dc0cdfcb22b9c9e222c29",
         intel: "84755a74c6d7b4d2be4a7ad7e80b011699f13b865a7c89ffb4e9025416667f9d"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
