class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1216/magpie-cli-darwin-arm64"
      sha256 "4b38558c67d3e6bf2c87969c009c4ff5f46415ac88c7f7244690a3cb9010035f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1216/magpie-cli-darwin-amd64"
      sha256 "94261b0baf4530692a59d040a189fb08c05bc489b376e6aa627e1a8843b6593e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1216/magpie-cli-linux-arm64"
      sha256 "2a2dd130743483c6b9b7b5a3b8f7d0a3cce53894eb92834681c54d49b303342d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1216/magpie-cli-linux-amd64"
      sha256 "4dab8400af186fe42bb21e15a8cb21cb4b18cfe996cbad804b7d7de6d0fc38ac"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
