class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1245/magpie-cli-darwin-arm64"
      sha256 "3e56bf1ee71e3e8e98bf67e53c4adb223ac5f9e072002b9ff3c50fbaacebee9d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1245/magpie-cli-darwin-amd64"
      sha256 "6bdbec20f07b70d2ab7a7f6fc5de2661d93683342c3f6382c43f393be33f2056"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1245/magpie-cli-linux-arm64"
      sha256 "f772f68e7b74520da808d219662b4efe8a8e0a5b473e7bd5ad466344fcb7e881"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1245/magpie-cli-linux-amd64"
      sha256 "ccb6990e951ff8b2f69ffbc0d4b23ba98bf9db09c581d7409e1230fe07837665"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
