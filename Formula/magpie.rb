class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1180/magpie-cli-darwin-arm64"
      sha256 "33ba4fa9c4c4451330b4c6bb4c8232afadd00904dd96bbad992e814296eaefe3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1180/magpie-cli-darwin-amd64"
      sha256 "f8d6edabc279c12e4deb806b9c7bf44604b1669197a2bf01c72a36e6a1dad9e4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1180/magpie-cli-linux-arm64"
      sha256 "1582b87eb21687c8b74cae37ebef3bd25b2e69084f1f893b9c0d69dd248fb0ee"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1180/magpie-cli-linux-amd64"
      sha256 "552e0bdee0e4f6f9f760b41c200498237e24d8cb423d602a7b51f6f117cb4267"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
