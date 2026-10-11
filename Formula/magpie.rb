class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1196/magpie-cli-darwin-arm64"
      sha256 "6bde7f53487cef779a7213b7d0c68c23c9fddfc19b9d307bbd7d3a1f14a0bd94"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1196/magpie-cli-darwin-amd64"
      sha256 "e64469358034e7d3cff87274b2ded634e2de35aa515b1881dff812e2b2395aba"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1196/magpie-cli-linux-arm64"
      sha256 "254b047061c8b75d6056081865883b63b3e2ff7990cdf328e168d9ec6e7b2b9f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1196/magpie-cli-linux-amd64"
      sha256 "78d048dea70dd94bee8872cd438c8e79b1f6c995afdb407dd56967850604e29f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
