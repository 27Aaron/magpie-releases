class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1175/magpie-cli-darwin-arm64"
      sha256 "9555c895237a93ea2d1730487f9dffa248b6c26a126c3e4ba8bccde45efa536a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1175/magpie-cli-darwin-amd64"
      sha256 "745fe9306323b24c27470699f254f50fcc827ebfe04dabe654e6341a2ddc4156"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1175/magpie-cli-linux-arm64"
      sha256 "c6f8eee106c72e4bac532bf0d5eb3986daf2e9995457835d94eb32e9587a8639"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1175/magpie-cli-linux-amd64"
      sha256 "8f138fd9a4c08c1462a737aff10a884bf351fb62bc1e71004190c35e03a9d748"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
