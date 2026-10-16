class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1272/magpie-cli-darwin-arm64"
      sha256 "d4f660d4e63e6d6c0b129f5d5d29d190cba3ae16ce98903abd5085b01163d8ea"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1272/magpie-cli-darwin-amd64"
      sha256 "3532f088f8a92cf3c4b2bf12e1b122bf7ffb9a6203bb7e399cb4816b82c0d2f8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1272/magpie-cli-linux-arm64"
      sha256 "1cb2e9301ead0478cf27920415b2cc7acbcf3a65e61d87233aa596fd311a0ec6"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1272/magpie-cli-linux-amd64"
      sha256 "279452792653756c393b19ed18f9175a44a01ed3dd61a81d6bbf62da45719b1f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
