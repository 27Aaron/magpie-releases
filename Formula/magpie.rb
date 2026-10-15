class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1255/magpie-cli-darwin-arm64"
      sha256 "3a0f1010d2dc538a9c6958ebfbd2409d824143eb146482cb6629c8b0269f2c1b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1255/magpie-cli-darwin-amd64"
      sha256 "6e97107c58a645d4a15e4b2cca152248f4ea41df77d6f7e948223333478668e5"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1255/magpie-cli-linux-arm64"
      sha256 "055bb715b4f9314970d6417e3b9334fd9bf33865e3ee4664c29d43d29dbd510e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1255/magpie-cli-linux-amd64"
      sha256 "6d8abcb025bd443d82a0f81334d26445afc62caded04dd89e6f9f3f634079478"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
