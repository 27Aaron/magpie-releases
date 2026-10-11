class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1187/magpie-cli-darwin-arm64"
      sha256 "a559f0ff8a2f94458c505f18937619a62c88ca2f70c3a943aaca14c4bd439a5f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1187/magpie-cli-darwin-amd64"
      sha256 "06fefbbcc312a1ad5b6251d12a165f21da381a96aa6e04e506a18d5f0ee1aca8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1187/magpie-cli-linux-arm64"
      sha256 "f8d5d0823eb22ce99c184c879cd7ddf721d9906a069b54cc7ffc64a172e8ec16"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1187/magpie-cli-linux-amd64"
      sha256 "2c39d7e833d92156b8a2d0d2d972ece7694bcf170c8f48ff31ff28b77006a774"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
