class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1217/magpie-cli-darwin-arm64"
      sha256 "2cd6923836e5f7da6a6c5c89a4b909f98135813b95b992ed318b61c321acaf4c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1217/magpie-cli-darwin-amd64"
      sha256 "35832fbc08f41cc2a240287ddacc8782ea86aa28dcfbb0a31d664094738f38d1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1217/magpie-cli-linux-arm64"
      sha256 "bb9c16de757e7d31158164a3d7c67994c4d86f8623ae8c2c36865b9c97d99377"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1217/magpie-cli-linux-amd64"
      sha256 "40e3ac1cc54f9be80844456758a32ac7c511398d0011f370a45bc00e1c323c64"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
