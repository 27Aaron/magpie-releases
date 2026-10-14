class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1237/magpie-cli-darwin-arm64"
      sha256 "eeb53697771c89ace91584397d3ac679b28545ef7b243469c48f63e70d62d8d0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1237/magpie-cli-darwin-amd64"
      sha256 "aec9a92907d7c7e97897dda2bd99a7fece6b1e649a2f6785eb0ef871080183b4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1237/magpie-cli-linux-arm64"
      sha256 "91373f4801333af392e39449f0bf5623884126ecf84197597d670c6af9813df7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1237/magpie-cli-linux-amd64"
      sha256 "101914ec8d54df98311c985522fb9cde9dafcd122fd03bf1c09bbd7cc757ad1a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
