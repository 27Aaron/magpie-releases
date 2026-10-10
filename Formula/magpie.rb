class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1172/magpie-cli-darwin-arm64"
      sha256 "0415e93223180a69c845e91ef9e10dbb37c413da8f8a311c09b2e91177232189"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1172/magpie-cli-darwin-amd64"
      sha256 "65931637cf4d007b662753dee3725eed2fb5058659b2deeae9c76f3437e5787b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1172/magpie-cli-linux-arm64"
      sha256 "593875312b0808d170a34d0cb17e588d0fe592fd50ff94a042c30a2a14024e57"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1172/magpie-cli-linux-amd64"
      sha256 "c0d088e6b9250a364dfc56d1edb679bb46f1782ac406ea961f8c5932d4080b21"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
