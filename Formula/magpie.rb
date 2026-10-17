class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1283/magpie-cli-darwin-arm64"
      sha256 "81c9377c69dceb58929e7b9732b50529d6ffa5d40958c25f22f6541cd843a9ee"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1283/magpie-cli-darwin-amd64"
      sha256 "55ba92d4f86deb7ba2b370e72a01ccd288a9e85e21c4b6a974513de51202265b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1283/magpie-cli-linux-arm64"
      sha256 "4b306de7f1c8746a65dc21299bb9ec05e60a7f4819cff8c3a19d7d2c7aa7b3ef"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1283/magpie-cli-linux-amd64"
      sha256 "49e754b38f712483d27a3d2c60fdda9f55785f0967b287621695c5ea202af98b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
