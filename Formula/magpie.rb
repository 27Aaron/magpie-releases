class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1235/magpie-cli-darwin-arm64"
      sha256 "532a20beae4787e7bc130d673bc919c62c8bae714f39057e3ace8484165201e2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1235/magpie-cli-darwin-amd64"
      sha256 "0bad349f137fdabefb7f92d8443a7997e4616e3e19a66bc933d6b61b67739c1e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1235/magpie-cli-linux-arm64"
      sha256 "392922eb0341636d7a76a015e93980ea00b53e6363eecc4b4fcbad9967807671"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1235/magpie-cli-linux-amd64"
      sha256 "5427ef3b5ce5a13ce04710359235f4b90a95ef415595e5ce11fbbad923763421"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
