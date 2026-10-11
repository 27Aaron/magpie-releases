class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1200/magpie-cli-darwin-arm64"
      sha256 "02c6c87e4dbc7babe0745547e67f43367ebe1e3d6a2609cf4d63a38040a12f62"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1200/magpie-cli-darwin-amd64"
      sha256 "4ec0344daf15ba09ef0e51042d03b149a76c0b141e089ce3da2845c9c6b44b97"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1200/magpie-cli-linux-arm64"
      sha256 "c2cbc46abf5d5734ee956144e33a13d03471eac742584324c6f7c7aab5cd81c3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1200/magpie-cli-linux-amd64"
      sha256 "3ed29d07b4a52cc127c1f75cc441ecefe5ff6b4a1caa04b5779e13f0e85f06a7"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
