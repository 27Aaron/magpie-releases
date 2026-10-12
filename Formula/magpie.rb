class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1211/magpie-cli-darwin-arm64"
      sha256 "81e24f8e55f9b29c5cf9e672af194d844c01bb57faed16b661542d35fe5e05df"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1211/magpie-cli-darwin-amd64"
      sha256 "c7092d20185a039d8f94e2c3bed9bf66b58d0e742083ce2ccccc94128930d9c0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1211/magpie-cli-linux-arm64"
      sha256 "e1c0943e33cdcb9098c51a9a761999ba0853d315ec7ef7624a91bb48952fb123"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1211/magpie-cli-linux-amd64"
      sha256 "2defd00c8eea128873f944491857e35a9e7e8cab87c3ecd60409da2f53e985e4"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
