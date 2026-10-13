class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1220/magpie-cli-darwin-arm64"
      sha256 "e0ca79491ea40c9ef406592f9da79a08c00f4633386ab2f79a1d3a1b5f128ed8"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1220/magpie-cli-darwin-amd64"
      sha256 "e626ea36d3f2eb58311cb72ae2dfb409bdab1b046ad67e331f81acd1a60ebc87"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1220/magpie-cli-linux-arm64"
      sha256 "efc58dd0cb4bd3fd065f4921091c5ac4f5b44fac1215efdb3cdf85b2c05bf79a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1220/magpie-cli-linux-amd64"
      sha256 "f28880321cd3f392bef25e4d180c1048ba525c07959cb570cf45a7efafcf804d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
