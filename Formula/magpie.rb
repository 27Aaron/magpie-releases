class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1223/magpie-cli-darwin-arm64"
      sha256 "576665eafe7705d4b307297feef4c8ada929888e523d2c56bc9b21cf54316853"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1223/magpie-cli-darwin-amd64"
      sha256 "60a14beced7cb76f5c4a3aba0744bf6e487feb491c4c540e78b5dad3bc76e2fc"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1223/magpie-cli-linux-arm64"
      sha256 "ba91cff90903b607571a54c0740b0b7bca0d601e0cb45511b0c2609d92b54e57"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1223/magpie-cli-linux-amd64"
      sha256 "2084be169ecc850307ef22e540f50be123eecf1c2a2427066d83375cad8fef05"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
