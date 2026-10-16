class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1265/magpie-cli-darwin-arm64"
      sha256 "c75d0ebbb8cf145cb0f01dae93f98ac176949455095a974358e1d60dc0050d38"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1265/magpie-cli-darwin-amd64"
      sha256 "791d3da3e047bd84f0882467359e8451132ec7d78a566f079dcb8685b067e01e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1265/magpie-cli-linux-arm64"
      sha256 "13ecd181fca4f34e94df46b3a0d8a2d996f7a9483a11dd5a692061314382ff52"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1265/magpie-cli-linux-amd64"
      sha256 "454aa1a49bc08524b59bab27368cf249e24f79d05f144f7af531c425c5c13537"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
