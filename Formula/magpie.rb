class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1244/magpie-cli-darwin-arm64"
      sha256 "31e66e3711e97aed3d9828c7cb6ec244fb4d2777f3ecc80f75f4472b60a3ff1f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1244/magpie-cli-darwin-amd64"
      sha256 "6b62ae45f429125379b52319f33f8597791b19809a53b475a024b2f1c6c457fe"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1244/magpie-cli-linux-arm64"
      sha256 "1ab62c65fc84070e9e8eb68ba6c1a341ebcf7307bf5b4a6127430c256e0ccf4c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1244/magpie-cli-linux-amd64"
      sha256 "bded8c318df41b4e2468bff78811f40253b12acc9c22943b16b1da810187b446"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
