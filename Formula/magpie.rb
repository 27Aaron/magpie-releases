class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1207/magpie-cli-darwin-arm64"
      sha256 "eba8a668ff50fe538728c951f5a974d037ca3a25199c61994b9566177029b68d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1207/magpie-cli-darwin-amd64"
      sha256 "64dbf4009560ee1ae73bb6013404c3b4a7c8943f18e07ce9dcd8503d92ccf4da"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1207/magpie-cli-linux-arm64"
      sha256 "5ed52e81c8ec101d59737791d6497b2612a0a3fbcfb1ce03828d546b383ea256"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1207/magpie-cli-linux-amd64"
      sha256 "300db64493106fdf88fbe00922ba85b63cbb6bd6fc625fa947a08766f43e7810"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
