class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1253/magpie-cli-darwin-arm64"
      sha256 "9b0b05ba70a8d2ca48643c16d7e5b80fa68d71e8f6c255a269d607cd84dc1855"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1253/magpie-cli-darwin-amd64"
      sha256 "e760a8ccffb68e01d15dd9ad887a06f46e4693d8c325478ee39e5d21bbc36466"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1253/magpie-cli-linux-arm64"
      sha256 "c8dd7dc0e5608ce3f42c353ad82b762db69fa5501904b45dfc592faacaa5469c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1253/magpie-cli-linux-amd64"
      sha256 "7f5ce04d6bec7bc94a1d192315b8db6fca8d8c10d323d685765751f14c1f161e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
