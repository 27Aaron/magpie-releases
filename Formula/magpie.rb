class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1178/magpie-cli-darwin-arm64"
      sha256 "1e83e6389e0fe94a6cf03ae89f215c860d5bfe8c71418cf198986258b270728b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1178/magpie-cli-darwin-amd64"
      sha256 "a616248499bdce8d8d562273cf84aa334f589fca56c84852b903280ffd4b3b0c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1178/magpie-cli-linux-arm64"
      sha256 "eca0ce9e373136435db6ac2b9599b9ef71007e81720d6612ee1b3ea15ee730d2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1178/magpie-cli-linux-amd64"
      sha256 "686f61737200adc21e3711aaed505883be9dfea4c4cb1cb14ba68f66524a3a66"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
