class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1269/magpie-cli-darwin-arm64"
      sha256 "a7b4a5e58c21f39bf99e3c6ebcdc201a8300758280b610acef3340075e734f49"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1269/magpie-cli-darwin-amd64"
      sha256 "8b382b5fe2a3fa582270c8e15c94580ba13ad76b0373a41136679a806af359a3"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1269/magpie-cli-linux-arm64"
      sha256 "6e861d2a5517e5534280ec0734fcac8df2bf918cfe0e22a10a50e8dc1788bafe"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1269/magpie-cli-linux-amd64"
      sha256 "c9fc737454c1d7d9357a6a92e83fcf448c0437c7085df0e555a80f604a6309ad"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
