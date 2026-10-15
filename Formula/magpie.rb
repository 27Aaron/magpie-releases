class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1256/magpie-cli-darwin-arm64"
      sha256 "6813d2fde20c686b8e2fd617fe5add7556511869faed77e0d449ca9298f0fed1"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1256/magpie-cli-darwin-amd64"
      sha256 "50ebeebd2a98c1fab7971270dc713531405dc5f173dc777b4ae0973d9b3095aa"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1256/magpie-cli-linux-arm64"
      sha256 "986a4af10b3b71a7d819841602dfd2691aa50d781ecf4377e59d08543b4d0181"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1256/magpie-cli-linux-amd64"
      sha256 "6933fdd5b03029cbcbc060b69b1b2400779f12752b0d2fdd2ed7d4a5d4f33ac2"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
