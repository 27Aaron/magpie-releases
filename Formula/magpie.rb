class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1279/magpie-cli-darwin-arm64"
      sha256 "3628598d54dd438d4ebdbc9bfba7969b01cddbc07a12ec0c28c508cee0935a6b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1279/magpie-cli-darwin-amd64"
      sha256 "443356098fb6984f7ada16b35724ba6be91d008e415dd8903894486859536f81"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1279/magpie-cli-linux-arm64"
      sha256 "5be614226b0bd0165d25d996259e9887734f8f3f715f2039125c67f1c5cbdc30"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1279/magpie-cli-linux-amd64"
      sha256 "cd4621f09cf51f04735bf4916fde43c5f541eb7dc658df2c663fc9e2eab201f4"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
