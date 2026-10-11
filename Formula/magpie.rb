class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1190/magpie-cli-darwin-arm64"
      sha256 "b97402b5ecac2407e1cd78784fd1de9060cc86719280579e1da16e3255dce234"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1190/magpie-cli-darwin-amd64"
      sha256 "ef0c6fafb7b2830b9f4d2ee248c88511d142b17eb02c24b09f950f09cf94ea79"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1190/magpie-cli-linux-arm64"
      sha256 "304b99c3f3ea246b0fc7a87865e0bc288f70b662e438d42a2a868617b0ad7439"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1190/magpie-cli-linux-amd64"
      sha256 "1f09009b7851349770de77722cb30cd2c6f974f8faf2b5266300ce20456479d4"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
