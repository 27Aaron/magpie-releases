class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1247/magpie-cli-darwin-arm64"
      sha256 "31a75bc7a23eec1b6de8eb4bb5ba04f13151b82419dbb8f59bdb7b66c4ffff6a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1247/magpie-cli-darwin-amd64"
      sha256 "9ba675c4bee63cd7f605bd75f5603eef26c12a3ee9d4aa0b76c2c89955c310d2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1247/magpie-cli-linux-arm64"
      sha256 "964726aac397667f65a2f8473ebf507b5dcce2be2a99ca5eb3e792048dbf319f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1247/magpie-cli-linux-amd64"
      sha256 "2caa58a2b7df801099475e4945e2fa9dedfe323b725c5beafdc01b1d6f3d06fa"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
