cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1235"
  sha256 arm:   "2511d748a42e8d5fa92daa6f0b97264a78002eca44def09952bba0fa5aae37d1",
         intel: "81adeba9c2d5063cb2337242b172da50734e1b44ddcbab64867ee3f2fb639d9f"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
