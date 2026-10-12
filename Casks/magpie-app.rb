cask "magpie-app" do
  arch arm: "arm64", intel: "amd64"

  version "0.1.1214"
  sha256 arm:   "a1530a1e9ed63d12aabe9cb56585ebd273a11bae4e548a5d1e70511fc8f74208",
         intel: "522e421b4d8c9db4d6c377fa887e98ce97b228df673a8406ec426fad4076f428"

  url "https://github.com/yetone/magpie-releases/releases/download/v#{version}/magpie-darwin-#{arch}.zip"
  name "magpie"
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"

  auto_updates true
  depends_on :macos

  app "magpie.app"
end
