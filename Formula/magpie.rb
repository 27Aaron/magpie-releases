class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1176/magpie-cli-darwin-arm64"
      sha256 "19392bad448ca92ef334a8534a7916ca377d005c149475fbdc63cc55b3ea46c3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1176/magpie-cli-darwin-amd64"
      sha256 "dfd5a8a6e08bb5eb25b2a71e7a3d94a4c53f72c38ae83e512a941822ad1e3e26"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1176/magpie-cli-linux-arm64"
      sha256 "0149f077b5078b140cc4c5b120f564d77ee5f84ae9e13ce8e79f7c93cab9dd10"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1176/magpie-cli-linux-amd64"
      sha256 "947cb46d345728c0d0c055b45eff801a6a51c27b94efb8bb4ebff4e5423f959d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
