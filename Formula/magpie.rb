class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1239/magpie-cli-darwin-arm64"
      sha256 "574db4d7a6f864536e5ddb3a9412c156449c4c56ca272fde11d67514119b2c70"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1239/magpie-cli-darwin-amd64"
      sha256 "4621a0637b862345a77b16e6bd5ceb51ae55afcf8d5b57ac2b782de1f797afe2"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1239/magpie-cli-linux-arm64"
      sha256 "79a4522761934e66ba4948288d0d1f25da66c0bc131ef0ceb910c39a8e16a010"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1239/magpie-cli-linux-amd64"
      sha256 "b282cfe7f8b114ee6cd2d981d7eeeeffda62419c4797081a326e17f3f98c43d5"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
