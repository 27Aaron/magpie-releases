class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1242/magpie-cli-darwin-arm64"
      sha256 "360de2d7d68f729e4c4abc889e2a011e330172d1f831968d369a445469415c5e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1242/magpie-cli-darwin-amd64"
      sha256 "fe0b7a979861b326b6676de4d75495e002b9a17dc5d45ea322827f7d3243f708"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1242/magpie-cli-linux-arm64"
      sha256 "fc92c9e121400a2c19e8399a2b10c6b01635e9416d36f3d9c0bc33a8ac693e44"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1242/magpie-cli-linux-amd64"
      sha256 "9d04e383f730b40ac85984eb890549f7b1991bc2560f513a54285a229a825978"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
