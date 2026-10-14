class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1234/magpie-cli-darwin-arm64"
      sha256 "0b45f8dd6b4ca4b37d2d9fa491b6f48efaa9241f22a71d9cd969982f1c866ae0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1234/magpie-cli-darwin-amd64"
      sha256 "dfa7b68913fddbbb602c288e26e55f7dd14994893b8ebddf7968a66ae5c38b5c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1234/magpie-cli-linux-arm64"
      sha256 "97219d68a661f8d21d79fe3ab19afc02d10137eec31ee4ea10580ee0463204fc"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1234/magpie-cli-linux-amd64"
      sha256 "20d90842a4b1c65cb811499f3d9068fdafde3033a63229619d4d1477cd18676a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
