class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1275/magpie-cli-darwin-arm64"
      sha256 "32f10e6aee0370e67a91b1a412a476f95fcfdb5a8e9587fe01fd27eea9aad925"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1275/magpie-cli-darwin-amd64"
      sha256 "1c89479ce52b95861b08547653dac506568326bf421d323e905deefddb0f1415"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1275/magpie-cli-linux-arm64"
      sha256 "143c0a0df21765795af5dc12bcf90f82ae965949ce4e6036a210c80134336918"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1275/magpie-cli-linux-amd64"
      sha256 "e6adbbdd3249fd2ddc6be178ed39e25713de4f3abe2ce2635fe25f907787f0f1"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
