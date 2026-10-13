class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1224/magpie-cli-darwin-arm64"
      sha256 "f3153bc9e6fe3c85f83996c6d7a0776e4b489d64ff40dd400babe458742210c2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1224/magpie-cli-darwin-amd64"
      sha256 "add35620ed2ecacc1e2536cab6f1c9532badf594e6b09124f6446f790aae94a5"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1224/magpie-cli-linux-arm64"
      sha256 "12716411a28ac65d105735e55ec2f52f227f5b915b80e999042c4c599e8569da"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1224/magpie-cli-linux-amd64"
      sha256 "9eb219707716bfc22124f5667cc4d6eca5eb14a9808889b5675c600d96b5711f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
