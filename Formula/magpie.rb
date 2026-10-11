class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1183/magpie-cli-darwin-arm64"
      sha256 "790a21803b880967791c06ca9a40ea24b0855617a9e8e0e3153cca72cc1d0300"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1183/magpie-cli-darwin-amd64"
      sha256 "0004604d07f8fcaec50840a7aecaeec3549e5ce8e064ad2ee91514878b24c580"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1183/magpie-cli-linux-arm64"
      sha256 "12f46313d83233ee99eec4475f5d31881558e49315834c3f84dc6badd1311937"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1183/magpie-cli-linux-amd64"
      sha256 "ec00c65285e0e306d7d13c4fc36de90a4cff8f4beb7b8f6539e736724d13285a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
