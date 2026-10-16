class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1264/magpie-cli-darwin-arm64"
      sha256 "c8894eafd53de6908a5f3f6b9e00da2851dccaebf6fd11d86b9398295df9726e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1264/magpie-cli-darwin-amd64"
      sha256 "06ead88ecfc04378b861c1a0e68bc6f84a3a0d82c5f62503f9c5da549c471d1e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1264/magpie-cli-linux-arm64"
      sha256 "f7d2aa38181bc8c3dda7e9f4282b762325d2f0db9cabf2b42a565a049c1a89a8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1264/magpie-cli-linux-amd64"
      sha256 "84bd98edc9de4654360fd700da996842c729c1768d4600bf7386b24447b4ef30"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
