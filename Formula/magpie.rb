class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1268/magpie-cli-darwin-arm64"
      sha256 "cecdebe2bda64cfafb3aafd037ac1e943fe4e7c6c38d4482967a1abf91d26427"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1268/magpie-cli-darwin-amd64"
      sha256 "988fc6e6fb15969e3fa347c218c545fafe93b0b03a5694f89bc480521163e4e7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1268/magpie-cli-linux-arm64"
      sha256 "ff90f2b28ae6e50d0a358a6eebadb938e540e8aa3fc59d8e8e806ddbab7c8266"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1268/magpie-cli-linux-amd64"
      sha256 "0b6769bf3c1e93572289f8af5dac037aca140622d3fcf9d929616003a8b721e9"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
