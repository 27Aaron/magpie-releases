class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1177/magpie-cli-darwin-arm64"
      sha256 "67d4a3903bc9a1ee31c1db2d7270d91754f66be0719c12dd5402c8e4fdb5710c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1177/magpie-cli-darwin-amd64"
      sha256 "64b501b8b8dad3de284b56b58cc1a132b3b31b83203c02cc97ac46f948406c34"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1177/magpie-cli-linux-arm64"
      sha256 "729e585fe918a52d8257c1a94cf19add59440152d2c200c47565640196b7fb22"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1177/magpie-cli-linux-amd64"
      sha256 "43cf3b47051930844c7589c60cc760d2d27b573b3079c803fe2623b39c9ca613"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
