class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1231/magpie-cli-darwin-arm64"
      sha256 "2a08525ee31b0f3e446b64097584965aee9a307bf75e0b00edaf72ea54256f9a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1231/magpie-cli-darwin-amd64"
      sha256 "8f44bc365d98d5e9ca62cc632d34cabee044834bcb8a5787b3af72b34ffda152"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1231/magpie-cli-linux-arm64"
      sha256 "80ca4ac08339b68e16d17d2890c49e32daf33d1993503bcbc37ac8a4ee87af58"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1231/magpie-cli-linux-amd64"
      sha256 "073e93dd0d3923df3ad4ac292ca502e1950946042451cda5083de69de34f619c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
