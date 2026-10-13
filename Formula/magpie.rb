class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1221/magpie-cli-darwin-arm64"
      sha256 "a0ce6a798489df200b65c469bf789dc53fd11d64c1c9cc271b921f769db493a4"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1221/magpie-cli-darwin-amd64"
      sha256 "647124dde8c6b0d035f9c1bb4453982cbaf356f26018b98c8c8ecc51f24daaf3"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1221/magpie-cli-linux-arm64"
      sha256 "18ee809a2b23e463fc5369f5e6ef745447c5f8adba84096a9d0f3d8ac832a7c5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1221/magpie-cli-linux-amd64"
      sha256 "6c0f6b1d5e48b27de742a4a54415c4df37c9c2a0b7b38b66c0a82bf68cb40897"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
