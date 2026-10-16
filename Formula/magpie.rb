class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1266/magpie-cli-darwin-arm64"
      sha256 "a9f029b946a7e87e3f02dfb455c395b46f0b6291fd721ef09991ae0522477742"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1266/magpie-cli-darwin-amd64"
      sha256 "edb50b2ea4e8dadd3b91acbe27acd65a20e239f72c7f597cdfc6a56ae6653b40"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1266/magpie-cli-linux-arm64"
      sha256 "575d6b8b3f8180fc221272f9e471f15490298029dfce728f8bc9c1b9464ce96a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1266/magpie-cli-linux-amd64"
      sha256 "e75670be5570698cd769b31a42efee3344d0152cff1bbdaa16065409ac36ce03"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
