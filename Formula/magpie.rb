class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1233/magpie-cli-darwin-arm64"
      sha256 "9bd1ddef8d580f401ce41137ba3d5cb2a6a2b7d2eb0b7e9072190f2322f54310"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1233/magpie-cli-darwin-amd64"
      sha256 "6e9f8579c0590ebdae738a1a99c0598d9d7244d6b0aee37f40cad85b4cb0fc3a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1233/magpie-cli-linux-arm64"
      sha256 "0f2a1aa354454590c8601586ce486a5f223a726625aabfe3dbda63f2290c07fd"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1233/magpie-cli-linux-amd64"
      sha256 "74d392e42298e2409a1b11cb09a833f7fe8c7a5cac487d1781c6f751c7b7ab8d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
