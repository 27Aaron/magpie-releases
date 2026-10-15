class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1259/magpie-cli-darwin-arm64"
      sha256 "a1e158063edf4de4718925dda38402dedd6972d5eaae4ab3c8c7eb79cb0a52fc"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1259/magpie-cli-darwin-amd64"
      sha256 "e940e41796c57a4095aba761212a2a002c0bed8c03f801da8fefd5e93d57c37a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1259/magpie-cli-linux-arm64"
      sha256 "4707f0a4624b6362f55f62e23b475c595ae4c95a7a7d4c85d3ca9d508a34e8be"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1259/magpie-cli-linux-amd64"
      sha256 "490022d27d49431c0028e02972202a4c44322b0aa379de724c683f691fc6de78"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
