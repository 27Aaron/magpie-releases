class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1254/magpie-cli-darwin-arm64"
      sha256 "23b213ef1e94722f922d75cef7979fdc8df30e24c42fb2ef59d10d4301df2154"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1254/magpie-cli-darwin-amd64"
      sha256 "1063d888e5ed96dd8e25fcc1f994363b0c6fcd26243651bbd29746fe07356c5d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1254/magpie-cli-linux-arm64"
      sha256 "b8fa2c72188ea98bf8acb0359e1b7fca589e347db80daf1b6821747d094ce161"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1254/magpie-cli-linux-amd64"
      sha256 "da1627eb5ae9787eed190f313a75b5c3c9d2310f5d9946062902cf48e10f0b74"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
