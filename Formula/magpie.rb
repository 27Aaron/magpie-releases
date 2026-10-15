class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1258/magpie-cli-darwin-arm64"
      sha256 "3cc002fd8ca7edf0ea9b9919550f6beec6cd3cfa99e8f8a91a29281981e15d18"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1258/magpie-cli-darwin-amd64"
      sha256 "34eca9fa0b2065b0261f76aed2dbeab429004d5a791aa9be1f743e3a80855018"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1258/magpie-cli-linux-arm64"
      sha256 "e6779b521b5bd0544679dbe448a7895ffde2b8e03d5b2337a0a9b3a750dd1984"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1258/magpie-cli-linux-amd64"
      sha256 "7420234ef436cf7707b1546ef1b8911ef0dc5d43c233639597d2cafc401f3f9b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
