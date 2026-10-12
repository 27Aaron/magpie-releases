class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1205/magpie-cli-darwin-arm64"
      sha256 "1c1e1359b5e35bac31625c48db6a1870336e1127468640408bfd13db84adb933"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1205/magpie-cli-darwin-amd64"
      sha256 "7ae1d866af5c90e57d49a74b7002000b03aba5fbf463d69b69f7ca685c7dba65"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1205/magpie-cli-linux-arm64"
      sha256 "da8bf5598fc503a759b8504e2f46c81f475b2325aa86573d034f9e58f04398af"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1205/magpie-cli-linux-amd64"
      sha256 "acec6885f5b952e0054a595333c1bed9c4ce155823518856ac1c9bb29faeb782"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
