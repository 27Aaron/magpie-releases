class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1286/magpie-cli-darwin-arm64"
      sha256 "057964fab3716ec3ce8c02a4605dc14b049e243c9b388b466988e416e045e4c7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1286/magpie-cli-darwin-amd64"
      sha256 "0a281919908a23e802520eb2b557ff939550f94b0c3280ff2965e90188532bcb"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1286/magpie-cli-linux-arm64"
      sha256 "07d8e96f33b1d256ed62cb7e666724264d8b5554567212e601618702f3cb8258"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1286/magpie-cli-linux-amd64"
      sha256 "4675ab6bf7bcad4e3cd0d53d6a95bed6c2f1bce05e69eb6615da11f8e31830a3"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
