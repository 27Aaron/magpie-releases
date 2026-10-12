class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1210/magpie-cli-darwin-arm64"
      sha256 "08aa192340785a269853071e52bba3cbf3b5fcacf4f4f18b210c071dc8b65845"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1210/magpie-cli-darwin-amd64"
      sha256 "f92b3335790694b975d347ff6684bcc59ca651e2bcabbb5c184fd889a3523192"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1210/magpie-cli-linux-arm64"
      sha256 "8c6ed4df6ca217d77949f207583e50708856239ccbfab97d5edd0b125ac0031d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1210/magpie-cli-linux-amd64"
      sha256 "aec8b99a8a3f9ba38290ad429d95f9a6ceab96a75b885d00ee23d6140ec7b5bf"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
