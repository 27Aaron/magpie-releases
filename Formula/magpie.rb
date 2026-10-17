class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1285/magpie-cli-darwin-arm64"
      sha256 "da90ae1c2c88d6ea6b83ecc144cf0b96789995fc9b012653fc6d0a0073e2d1b7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1285/magpie-cli-darwin-amd64"
      sha256 "534bb08bdb7923e5e847317f391bd44b1d38ab786df59c619d33493408277e9d"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1285/magpie-cli-linux-arm64"
      sha256 "1b57aa40ed2ed9484978ee14531de6d553644dc60ae581076a7f4de336f1c90b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1285/magpie-cli-linux-amd64"
      sha256 "6e6ef07a8faa1fb2ece151a38a276468c114a0d3e94476d7ac2fac0c37f65ce3"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
