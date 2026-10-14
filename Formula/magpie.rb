class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1232/magpie-cli-darwin-arm64"
      sha256 "9ea3e0c9ace27cbcdf794c8db41c3a82a3d2db96ff6c391d389b5e99ca52e83a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1232/magpie-cli-darwin-amd64"
      sha256 "987775bbb8531ac1d2fd4cad901a2d0137e032c2250ecd61b0925d9e6d6f1593"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1232/magpie-cli-linux-arm64"
      sha256 "faf739d8e2968189cdd6c9ce7df96158ab6c25fdc9f74e85e372d839b5f41a79"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1232/magpie-cli-linux-amd64"
      sha256 "156969d5cb54a589c0a711fe309c291ca5dc70d3acc608d8105f56228348c4d5"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
