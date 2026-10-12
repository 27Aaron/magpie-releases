class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1212/magpie-cli-darwin-arm64"
      sha256 "250eed35d2ac06238588cf8e811464608465a162a106cf3de1aab71c07070058"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1212/magpie-cli-darwin-amd64"
      sha256 "9130f2df5733ad1bb9ea30d5fc0c582a1a99afd6752cd7a70ccd29c79f681e82"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1212/magpie-cli-linux-arm64"
      sha256 "111798a658c90aaf3a49212f46a2d82948205929e9293df51a874c3bd78877ca"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1212/magpie-cli-linux-amd64"
      sha256 "9aaeb76b780f7f14dcd2b4a4c080b81287082055343bfbecc8209f4ca1e9b1db"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
