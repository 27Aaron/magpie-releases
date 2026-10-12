class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1219/magpie-cli-darwin-arm64"
      sha256 "1bacf3c1d9c8870fc35a322cfb886d50f8282bbe39e64496e8455194f4822a6d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1219/magpie-cli-darwin-amd64"
      sha256 "3413af8059173f8f81a0e51da64dccc975eed72e75dcedead9f453ed9a3e2bfc"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1219/magpie-cli-linux-arm64"
      sha256 "67390776e5959d12490b8e6f7abb81b4d0cb43bfadcd99b59fb03de82172e2fe"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1219/magpie-cli-linux-amd64"
      sha256 "d76af99bf0118e97ef2aa476ca604a0a4c0fbc4e12d42272620537a3015ab8ab"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
