class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1191/magpie-cli-darwin-arm64"
      sha256 "533cb39b5b2b88b67776e56c55b3f0fc69e8c49a0a704253b62aa8576a2af74c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1191/magpie-cli-darwin-amd64"
      sha256 "4da906fc0985d157e2bb4f1fe31a217dcba9319a70179b910c44b780633d6d22"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1191/magpie-cli-linux-arm64"
      sha256 "911a1bba2eb92a67aeb84f4039102b3f4548aad2740dde1eac5515ea48c408b8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1191/magpie-cli-linux-amd64"
      sha256 "5f0c63430c5c4971abcde404f9a71577148156ac9729334fdb65eae5682a1034"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
