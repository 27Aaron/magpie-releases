class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1281/magpie-cli-darwin-arm64"
      sha256 "0303992d6887cd1363cee41251b484921ed28af8b1985b82b837b9534303d2d6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1281/magpie-cli-darwin-amd64"
      sha256 "98f79e16f7ed566f07849b43140a1d34d47d79b112f67c2bd0020801010ec817"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1281/magpie-cli-linux-arm64"
      sha256 "ebb24d97a69723e32643d951effe113c7984d176a945d7c2d9600d3bc74d8caf"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1281/magpie-cli-linux-amd64"
      sha256 "aea01bae86499a6e534ff775a16e953bbca4bd0e4192fccb1eaf99e912523086"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
