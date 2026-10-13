class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1228/magpie-cli-darwin-arm64"
      sha256 "04d8768d72ab3645f231398dc269f42a8fcffe8ad5e3b576d1ffff41f1fae657"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1228/magpie-cli-darwin-amd64"
      sha256 "805d1a4812f3b5b5a63de95b9c671c6d815bf64b51f65c72a84a6438a4b19db7"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1228/magpie-cli-linux-arm64"
      sha256 "b8f6d3ecded5b7152cc79321a8c08cbf7935764055aa9fe39e6b512d3011df97"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1228/magpie-cli-linux-amd64"
      sha256 "b8108fb88ff350c74b88e0342b2c57dee4fd20d91dba3ff2e1ce80af9ff89140"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
