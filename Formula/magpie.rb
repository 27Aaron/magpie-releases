class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1236/magpie-cli-darwin-arm64"
      sha256 "2968b63b8aeaa8e78110fcd41b22fd3ee073453906bdc430fcd335423797874c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1236/magpie-cli-darwin-amd64"
      sha256 "4a29431d489ab9300c794e0f03d849aad9967c42e0f57332738eed8f6dadeda3"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1236/magpie-cli-linux-arm64"
      sha256 "e997cdb82c753045c36eacfc13105241079e72b4ad77efeab5e97e694f43a7ed"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1236/magpie-cli-linux-amd64"
      sha256 "8aec9e0e1cb7005a7d825e4feb8b6c81ae0e3c7663c0b575f2d26b460af23bba"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
