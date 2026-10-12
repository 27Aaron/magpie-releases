class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1215/magpie-cli-darwin-arm64"
      sha256 "ebebc72ad6fdf6d5338291cb7ac883e53490322e730d4491b09dc037efada1d7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1215/magpie-cli-darwin-amd64"
      sha256 "21b90a1777fcd6e3b40b0d16ee613ac2d5a4a46fa8f9695a4f26dd904c92550c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1215/magpie-cli-linux-arm64"
      sha256 "ba830a89f5a34ce04d86decc4aab6a5fd972cca23ee5eb187ccc42dd978ce6e6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1215/magpie-cli-linux-amd64"
      sha256 "eb91d110429281e1782e1e080c8782f142e47c71ecf9b7322b4573c06fa4de48"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
