class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1230/magpie-cli-darwin-arm64"
      sha256 "c923e15b103c2b6bd463587ce2a06d0f455ee84ab9c035881d9d84dfe3d3d0e9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1230/magpie-cli-darwin-amd64"
      sha256 "b518da87301d70ba2cf4205d25b38ee73e4e70430125fb9b38247429cdab7360"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1230/magpie-cli-linux-arm64"
      sha256 "88cb9fb42193ae3cf14e9d7e72d0b8ade545f57f38d7b4e384df32d9a4bf062a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1230/magpie-cli-linux-amd64"
      sha256 "28c0d38bcda16be956a0ec6a98427b8656959b325acf3c75a23c5d68d5de7b13"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
