class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1192/magpie-cli-darwin-arm64"
      sha256 "aa8fd23ddb30956624be1ed69b0b598ed91126f547f2dbb4ef33581a512150bd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1192/magpie-cli-darwin-amd64"
      sha256 "3dce424aa9a7a792e642dd709b24cd46c9c4d9e0611eb50be4f1b0ad179133bc"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1192/magpie-cli-linux-arm64"
      sha256 "ea192eea24d02688d76fb864a8b4bb6f3357645f2b92a8adc5a54d2d9cc811cb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1192/magpie-cli-linux-amd64"
      sha256 "18fa5467d4ba5e954bc8d978b6c34718933c3ba9a96f651c02fec5e977958460"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
