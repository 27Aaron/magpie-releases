class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1243/magpie-cli-darwin-arm64"
      sha256 "3ed5144d2ef34703a38c8c2a0e2211effbab5e016082c5b0f9979cef7e406ed8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1243/magpie-cli-darwin-amd64"
      sha256 "db2ec853f815a36e12ecc999a05c77f41abc063ea6a383f3abd57ea50213025e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1243/magpie-cli-linux-arm64"
      sha256 "b7dc2aaa12c60b1ec3ef69f00c741c4c1f3db8c2002ec1450effa34e44bc91a8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1243/magpie-cli-linux-amd64"
      sha256 "3181bf8d13f348b539696527da2fa524c564b1651630c142457fb4091a981319"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
