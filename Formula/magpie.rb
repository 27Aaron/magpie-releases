class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1227/magpie-cli-darwin-arm64"
      sha256 "ca3df9ecb10f432316dd78a4815755be2cbfe688cde66a38ff7d75af6a5ef05c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1227/magpie-cli-darwin-amd64"
      sha256 "eb485503ab7bf5e0714d8a1d780c0ffdc94407385339952de8e36a5fd74b0e03"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1227/magpie-cli-linux-arm64"
      sha256 "f446d6f15bcbd8868df7314c31c6c035a588356b87b4988a0699c501c79a45d0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1227/magpie-cli-linux-amd64"
      sha256 "1db30141e81d15279c2126ede95cb13f30ef9949f06d9e72e24cb6b888183895"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
