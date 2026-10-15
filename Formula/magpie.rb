class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1250/magpie-cli-darwin-arm64"
      sha256 "23d5df58d0f55ec4fd4b62e759980915d2638b4faa115cfc9aabe74e6794b0e2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1250/magpie-cli-darwin-amd64"
      sha256 "5a57441dd2442dddf6f29c8045da71c2cdf12da87b56238513ff182d28924d66"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1250/magpie-cli-linux-arm64"
      sha256 "b0c0f011dc6afe55d660975cb615ad84b2ac2a62b83ecfa109f8362795f2d526"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1250/magpie-cli-linux-amd64"
      sha256 "a2fba3b917a2992b25b2c630ea0ddbabf7629f8f2c654436255bd501637fdd6f"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
