class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1270/magpie-cli-darwin-arm64"
      sha256 "356cc14843f8609a1948b7301545c68fa0f13227d485abe745aa8dd4e2957387"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1270/magpie-cli-darwin-amd64"
      sha256 "aa7bdc9fc2becf9027dc6d565ee28b5abaf4601a1b22161a78d45f03bd9a2266"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1270/magpie-cli-linux-arm64"
      sha256 "8c37a8856e9cca7003601f5c59053074c5eafda41107e2a72e5db7fdb7979673"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1270/magpie-cli-linux-amd64"
      sha256 "21ba8e6fbfc1cec96453327db4c88ae4955ab5ecdfc55d26e0cc5acfec045ced"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
