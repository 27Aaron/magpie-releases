class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1173/magpie-cli-darwin-arm64"
      sha256 "8e2af58c40103839c3487b7e2a0225d751f53de15ebcbdcbe7517cb4ccdf6cba"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1173/magpie-cli-darwin-amd64"
      sha256 "bfd52bbbc4e5effe5bdaf15f21e8c0d0690b18400d0ee6bc568a3d0973c24082"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1173/magpie-cli-linux-arm64"
      sha256 "9d030e9779505760eaacda35ebe9b98dadaf1018a9a0c33353ec46fc41b5a5af"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1173/magpie-cli-linux-amd64"
      sha256 "96e3d707e4bc1ebc68f115735ef6478c9f518bc49642dca5731835526bf960e7"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
