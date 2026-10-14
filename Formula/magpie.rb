class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1238/magpie-cli-darwin-arm64"
      sha256 "9674148083537abfcfced5ed3237d10d9da0260d3b6d4ecb025717d2f0dcf33e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1238/magpie-cli-darwin-amd64"
      sha256 "c14198d18bee7b45e1cf721147079b20bdc81cc0899b56de924a047f15c50ccc"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1238/magpie-cli-linux-arm64"
      sha256 "9ce57a6ac5ada5722c8e3cd2f9e6e9cc3c87d43fa14d7d555224b4bf3f982db9"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1238/magpie-cli-linux-amd64"
      sha256 "5abc1909f9481cfc2e67934104ead637e7ea89a8ae88be4fb94e3b3cd2a8efdf"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
