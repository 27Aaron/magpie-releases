class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1251/magpie-cli-darwin-arm64"
      sha256 "d68dc80a623a42112a419a5b8f464844145195573cce03f505d32920426fe803"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1251/magpie-cli-darwin-amd64"
      sha256 "4e10508b3607012721342118ee450d52edb9a7e21ae5fe9d3aeb0f482d3d7f64"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1251/magpie-cli-linux-arm64"
      sha256 "787fa44fbc934d78f5d49de5885dade679af1beb2e61f92091765201434c03eb"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1251/magpie-cli-linux-amd64"
      sha256 "3c392267ef84e9d5c304c108e7833570f27b5f6e695fc78d7a5c3599d998aa99"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
