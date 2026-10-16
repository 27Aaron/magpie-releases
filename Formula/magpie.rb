class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1274/magpie-cli-darwin-arm64"
      sha256 "b717edf45fbc03d44577430ff4dc898caa6ae68f39171164d2cd4623f797c33b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1274/magpie-cli-darwin-amd64"
      sha256 "69c997c38057c55da15d475c033f5da768e5be1ddc73be7a26fa37dd6fa21b35"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1274/magpie-cli-linux-arm64"
      sha256 "fecd2b7f8c3b4c1c7a57b099d7d4586b7ecf302a28575a29fbedbaf74f244dba"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1274/magpie-cli-linux-amd64"
      sha256 "24ff23d242364c2d57cfac93982aa7d5b1906a81d3913fd1ace0c705ba86e278"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
