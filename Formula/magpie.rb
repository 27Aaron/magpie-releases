class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1197/magpie-cli-darwin-arm64"
      sha256 "a539670c716b15c7ed63966afdeff8142357acaa0b71cfd5056dcc4a9a4c58b5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1197/magpie-cli-darwin-amd64"
      sha256 "42dfd2a91bf81af9e6cd537dd8d45fa1a0109467c4307ec577fc93c6a3facf8c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1197/magpie-cli-linux-arm64"
      sha256 "e029b717267898f6d02eb5a0883df483f2f7870df5aebb4504fa0190eddaa594"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1197/magpie-cli-linux-amd64"
      sha256 "6c41521778d976f84e37aafa4a3610561afddafd5c32ad9984d4d5accbaf3068"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
