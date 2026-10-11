class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1194/magpie-cli-darwin-arm64"
      sha256 "2ce6daee5b037e812e4b052979aaac1ec2242e7591db6628ef9f1035438569ce"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1194/magpie-cli-darwin-amd64"
      sha256 "1af8f3e876825c7e31147c2d1b8f2a1c98be23c2aef9d459e7e27bffca7dece1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1194/magpie-cli-linux-arm64"
      sha256 "753dad4bb5598d846aa866c60281ec552debf90221d2f367d378304a4fa26745"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1194/magpie-cli-linux-amd64"
      sha256 "151b65811216d6c57759b02e2d48e216bbf1372d2eb5bffc909e7cb5b75818bd"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
