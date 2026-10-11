class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1185/magpie-cli-darwin-arm64"
      sha256 "3563a2c09712c22ac34d5f4a628cda8e8bfb439539a43c5772335c1f4102e6c3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1185/magpie-cli-darwin-amd64"
      sha256 "a15404fcd16a3d2d154bd54aadf7535d39b5ff38973e76d19a80d2273a4f8238"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1185/magpie-cli-linux-arm64"
      sha256 "c7d49ee081195847967a4194a3912d7c2bb3ea91819b0e362529324bdf696f15"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1185/magpie-cli-linux-amd64"
      sha256 "0a684973b1589b335e32d34b3933ab9ac16c975856d74df31d03e4893b8f911b"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
