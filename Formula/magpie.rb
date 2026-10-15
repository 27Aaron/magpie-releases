class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1263/magpie-cli-darwin-arm64"
      sha256 "9a526d3b60c248d2c9b795d86c64d154ee33d7f71a702304dd4de4945017ff99"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1263/magpie-cli-darwin-amd64"
      sha256 "67985f27ac496fadf74a7de69522f1caac5059132cc591daa55b52462bf377f3"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1263/magpie-cli-linux-arm64"
      sha256 "42fd5d781cc389720dfa3fca903ea251d511ececfe45d5ad016112f9112c8eb3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1263/magpie-cli-linux-amd64"
      sha256 "41b87d8cf9ce86ed3ad54011851494d7126d845602acf80b403ca624db3238af"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
