class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1280/magpie-cli-darwin-arm64"
      sha256 "1714f926bffa7e9d4c8399a0a419e515d47d6b8e7a8160e77a6669cc39feb9b6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1280/magpie-cli-darwin-amd64"
      sha256 "e09cb8c1a351517509076b1551c346b8a3dedb10b836f469c70fe6e2c3a578ec"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1280/magpie-cli-linux-arm64"
      sha256 "76e274e23129c4ec085681a40826f234c98565a83b5ce74021b8cdd0720ff29a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1280/magpie-cli-linux-amd64"
      sha256 "01cf20efb0320a31d42597f797e8d3d2343bcb27e797d8a1edf49e3514c055c0"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
