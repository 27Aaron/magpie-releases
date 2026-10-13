class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1229/magpie-cli-darwin-arm64"
      sha256 "a6e66924e5ed41f3616fc4ce2583be3b81aeea8176419d1063a8890bbae75873"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1229/magpie-cli-darwin-amd64"
      sha256 "1bbca1d7f99d63862f58089cafa50c3c9a31dd5d181d93c66933ed736e4b4377"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1229/magpie-cli-linux-arm64"
      sha256 "1cf820be61fb7c8a2878d83564adac23cf621ba1d56bfa58b510323d00f9be14"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1229/magpie-cli-linux-amd64"
      sha256 "0ff30174a942a75c48c0c24d77f75013618e0f9b895c39bd6dd139a5888f6366"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
