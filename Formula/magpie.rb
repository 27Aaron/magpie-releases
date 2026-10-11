class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1182/magpie-cli-darwin-arm64"
      sha256 "f1cc4e22936ee3fd70f9372ea9e4106200c0cb3e5fdc3ab589a3a53d68386fb9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1182/magpie-cli-darwin-amd64"
      sha256 "21e7899a9372349ad17ddd1c5221c72c5d33430654677ee2e2c4600d59d3c547"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1182/magpie-cli-linux-arm64"
      sha256 "42efd8a54ace1f05edf78c4514553c2da4c07656205bdc0a59effbf1fe15a114"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1182/magpie-cli-linux-amd64"
      sha256 "a372e43797d422ac64328205853adb1d1b2bd661681a3c2b5df0d338591c0ba6"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
