class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1222/magpie-cli-darwin-arm64"
      sha256 "53a99e80dcf98be2cd0e5ecb68a758632661cccd62cacf5a59cb5a0303500641"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1222/magpie-cli-darwin-amd64"
      sha256 "0bb457c7baf1048df5f10e0c0f04aba6cdfcc64e8c1bdd787ac319e4a4b0a409"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1222/magpie-cli-linux-arm64"
      sha256 "a358bfa7c294334df917f755130b2c9fafc88e83482cbe4faff9d8f3243bddb4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1222/magpie-cli-linux-amd64"
      sha256 "dec4becc507ea87d7be15416717aef056f55f90cdc40d4a406714af4f120e7f0"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
