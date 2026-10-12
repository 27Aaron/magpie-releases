class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1214/magpie-cli-darwin-arm64"
      sha256 "a70978f8ad9d2a294c144117f1e73f5d6454b3e994d951b6e5ef0fb3f754ed47"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1214/magpie-cli-darwin-amd64"
      sha256 "6553a18320b2394ffd77b5b3b40d19bd572eeed311c6fda8c2e0e47eeedb978b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1214/magpie-cli-linux-arm64"
      sha256 "ffcd1aea366d6680fd7014604d292acb4e6360b950e06a71d66e284d7000970b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1214/magpie-cli-linux-amd64"
      sha256 "8e05a229ed391b9a6d3c60797e53a94b8c0fc08640d514314661ccd13bb5f533"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
