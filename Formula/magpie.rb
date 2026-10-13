class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1225/magpie-cli-darwin-arm64"
      sha256 "385c49b52b5cf2dc67d099ce5fa5946bcd7f30fb6f2ce46acb7e37e895023a13"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1225/magpie-cli-darwin-amd64"
      sha256 "98cec3bdad6fdc9bf931f07645c62f23d3c25d96c36f2f5586ba564ad5cc2422"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1225/magpie-cli-linux-arm64"
      sha256 "ee12bc86ae540115e21b9a124d88c10bf1d115fa4023abf3b0efc653b2000f96"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1225/magpie-cli-linux-amd64"
      sha256 "13d06157fe5df8f88f01954b453beeaaa66d99bd5144f57b412be35ad09be921"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
