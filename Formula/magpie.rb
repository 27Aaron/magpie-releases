class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1199/magpie-cli-darwin-arm64"
      sha256 "bdbc714b57a3936fb7957d01e53551f5670bc770bf2f4a2af75c780f93ba328f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1199/magpie-cli-darwin-amd64"
      sha256 "6176162baa5f7db3a721418a794fb019d233fe1baad1f47a268b4ab4d441d378"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1199/magpie-cli-linux-arm64"
      sha256 "b8b24876b4eaad38d132e5454b7fbb7e8e8ba3dbf2acbd92cab16cabd5182c99"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1199/magpie-cli-linux-amd64"
      sha256 "151f87dd4913c93dab90cd81eea422660360654710e4fa95d0b5238927bef53d"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
