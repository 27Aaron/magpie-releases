class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1248/magpie-cli-darwin-arm64"
      sha256 "cbb569a5505f85b22f75de92813ba4b39fe9ee7b62613a025cedf36133053f54"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1248/magpie-cli-darwin-amd64"
      sha256 "72b7172d872d1d267e705c557f5d5203d2aa11e40b9c13b5b1aa2ff33015e49a"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1248/magpie-cli-linux-arm64"
      sha256 "3f1e354dca6fcfca05951212ba8cc92dc3042b189b6e615cc33ae687405ad773"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1248/magpie-cli-linux-amd64"
      sha256 "5d44a10edaa9ccd8ba60a3d307473a9c886ede5e08e52106a3f2ca373d0c9607"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
