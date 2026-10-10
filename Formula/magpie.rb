class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1171/magpie-cli-darwin-arm64"
      sha256 "8337b1ff9e952910b8dc7c8607bd99e33e106d4c07ac874f400773ce55d87c19"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1171/magpie-cli-darwin-amd64"
      sha256 "6c9bb02a6ec51ef97daafa0429f0ce830d1f8eb10b2466c02a5ed0c8678a3cf3"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1171/magpie-cli-linux-arm64"
      sha256 "939bce562223d127c7044e9367539a2695bfe87f955edef315c4cfa2c0205847"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1171/magpie-cli-linux-amd64"
      sha256 "47333e7c47c3db32426446f8696aeea1f698b6b22f05d50975916614ab6a814a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
