cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1248"
  sha256 arm:   "711e8076b9bddf5c6d55e23991b74465b0dbcd745f06a3595318178cf83f8e14",
         intel: "fcbbd1d1fedb478f422cad10e750e4f3a521fa8d375dd25a548cb4d4562e8d32"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
