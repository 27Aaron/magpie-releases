class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1193/magpie-cli-darwin-arm64"
      sha256 "a47b26c31b5fe8b1c8d741c518a3d291509b723067e6af06adaa4e41b379f44d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1193/magpie-cli-darwin-amd64"
      sha256 "f30d32c820f5dd138d35a75e3ebf9f82effc3a82be2c656ff7a4aceabb3b9cc6"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1193/magpie-cli-linux-arm64"
      sha256 "941999a8e297d82f0729c39341036dbb93afcfa9e22f208161ddb38ab8a32fb7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1193/magpie-cli-linux-amd64"
      sha256 "5027509fed408b6875167e1186f31a1bc0bd2054b1103c2ef2060bbff385b8e1"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
