class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1276/magpie-cli-darwin-arm64"
      sha256 "b9e512de6c2e09253a1b5729f964637da953982a19621ff365363c6c79bc79af"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1276/magpie-cli-darwin-amd64"
      sha256 "34b94c183fec83bf054adc4e58854e0919be598deaf0e72288e82b89a356a873"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1276/magpie-cli-linux-arm64"
      sha256 "5244381012642bcb7f817c21b8db070ccd846099827859d1e0df9eff9e9c5b9c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1276/magpie-cli-linux-amd64"
      sha256 "6787f7611cd48907b2a4fb89c994712ac83cc0df418b771a7d3aa5e8029a3dc1"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
