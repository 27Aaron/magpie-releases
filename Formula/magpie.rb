class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1208/magpie-cli-darwin-arm64"
      sha256 "ba51944d3c4170a6fa365035812c42debd1439be883d01b4b55db830d6311895"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1208/magpie-cli-darwin-amd64"
      sha256 "6550ef24fd1ac4d2ec2b8e34aade457ae09045c604d21ce94f2e2312cea4ec5e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1208/magpie-cli-linux-arm64"
      sha256 "01f957a0cf6be3ac4b995ddbd3cb9392f41225aeb07f2fb87d7595eae8c5fda7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1208/magpie-cli-linux-amd64"
      sha256 "2047a986d2cc5bf62c6fc29ecb9a7d9319ace8a0ec99de0810671e24c20e3b80"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
