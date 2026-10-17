class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1282/magpie-cli-darwin-arm64"
      sha256 "be165c1f8160da597ee3e9231abc0bf2dfbc6410d3ea368a29d4d75efa6c6f3f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1282/magpie-cli-darwin-amd64"
      sha256 "5dba8dca08932d063fc096f1260064bf5be6a488a89a4acc80aa9ef9eb267700"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1282/magpie-cli-linux-arm64"
      sha256 "3ce4040292f9389af3b7b3656e809c888bfb0539324ddf776ed438cf1844420e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1282/magpie-cli-linux-amd64"
      sha256 "59e03957856e8ea9818e7b5c238dd6c7772b8c99ceac7ab057f6f67ebec12dc7"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
