class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1262/magpie-cli-darwin-arm64"
      sha256 "40f90a3b27d7a13ed50c260a62e35657dc3cf4c2dba66685a49f4ce1552cfd69"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1262/magpie-cli-darwin-amd64"
      sha256 "ff28fdee670abbfb9c1ac8333e1b3474b448c53f03d2a6a0f83de8084bce53c9"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1262/magpie-cli-linux-arm64"
      sha256 "9aa1f418f0ab6430e0c9115f01ca40d6b03b42489a449793f0cdd282f45080a7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1262/magpie-cli-linux-amd64"
      sha256 "f0dc4aa64b2b0b94adb3120e167f5a2e5441dccd944595132c87301c42bbfee7"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
