class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1241/magpie-cli-darwin-arm64"
      sha256 "03015adc97ded49f093235fc42e4bfe4c8897c203759e5aa14b1aa9d31a8bc41"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1241/magpie-cli-darwin-amd64"
      sha256 "337709ddadae6af5282a91a4a1ef7dca00489d83195c17c7c87642b8a02ef8dc"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1241/magpie-cli-linux-arm64"
      sha256 "23bca39f26e38f7e93ef7c5480d3958edaf5ba309e09b69f0497b1eb01a867cb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1241/magpie-cli-linux-amd64"
      sha256 "8c6d750e82c45d48f1d77660cfea22b3f9a6d4140217a76d4f917c26f0cb8723"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
