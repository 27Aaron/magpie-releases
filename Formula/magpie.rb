class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1257/magpie-cli-darwin-arm64"
      sha256 "9c34ba8ff6a869a2492e627c7833632b84f332493bcb132d61a30dba41e40e8d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1257/magpie-cli-darwin-amd64"
      sha256 "cef10574d34c0148d4a2ba7d4e722189001915df88802765b6cb69e9e564a8b2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1257/magpie-cli-linux-arm64"
      sha256 "ea519e29040a3405bbd3fb49f6e386710bc3791f36efc72d214d104f853ace0e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1257/magpie-cli-linux-amd64"
      sha256 "eba3f7ea72ab50151b62f5bc9ce44d5bdd308b79a5f02bacdf380557e6acb777"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
