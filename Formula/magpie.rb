class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1271/magpie-cli-darwin-arm64"
      sha256 "24822f973f940cedf3014c0a6eedaf1471374682fa853e6277a1bcf31695e56a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1271/magpie-cli-darwin-amd64"
      sha256 "500f9f91da5d7142f9d9e905d2bb5e6a90c268a8be2af7e4b2d2bbaa5cef10cd"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1271/magpie-cli-linux-arm64"
      sha256 "623fd0ec056f0d103e6b426c154423cd21a8147271b04d2456af8e8cca1b8794"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1271/magpie-cli-linux-amd64"
      sha256 "5859bfaf40b594d46e46aa3b9665643a3fbf7149354823ba9f8c1a2695c500c0"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
