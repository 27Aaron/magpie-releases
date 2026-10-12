class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1203/magpie-cli-darwin-arm64"
      sha256 "bb2de25750438ed8fd7d9a78d521893e4c70822c0cf25fd4f42403cae458c502"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1203/magpie-cli-darwin-amd64"
      sha256 "328743bfa18d8d806d6169173f382bda2be320b6dc083a4a7151e4355f7f0ace"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1203/magpie-cli-linux-arm64"
      sha256 "1f988ee614a24e20791740ddd01d99215d3b3fb27ef9de644a43c9ab553d3bdc"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1203/magpie-cli-linux-amd64"
      sha256 "6cd3f2811d2270874da7e10ae1a2c2a6cd8e339d88cf2fb519dd80fb10b2b495"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
