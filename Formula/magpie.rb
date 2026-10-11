class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1179/magpie-cli-darwin-arm64"
      sha256 "941a33a73b2ae5e6ba026d2977d832e5f38c248e689fa58831670cb3c32a6339"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1179/magpie-cli-darwin-amd64"
      sha256 "edb0936df5f3eb4df21ac2ce6364106a95c73366f9f98d0fb9e3b453e5e243ae"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1179/magpie-cli-linux-arm64"
      sha256 "4f1ae082a578c7c4b2721451981543c81ad016c2737277c30e2175c008dab022"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1179/magpie-cli-linux-amd64"
      sha256 "6968d2bbdca6415411a4e25b5526b8cbe015c1cbb2728669863f0b3c4e3e85e3"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
