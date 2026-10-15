class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1249/magpie-cli-darwin-arm64"
      sha256 "c05ed548e28bca0324fef7bde703876d6d60a96063519c97685effff70e5e065"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1249/magpie-cli-darwin-amd64"
      sha256 "4e2f947411d48077f3e8be261ba23ad1cb92c1982ac2c5089643e6bcc3fa08fe"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1249/magpie-cli-linux-arm64"
      sha256 "e30f96679330838510cc034f19b4c581ae3d90280f7e214938226acfa8cf13d3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1249/magpie-cli-linux-amd64"
      sha256 "33476fde446c1f18c7be2417ff16157a6c4ba689437fc32dbe164a4972ff5ac8"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
