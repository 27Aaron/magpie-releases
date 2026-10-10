class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1170/magpie-cli-darwin-arm64"
      sha256 "d1e58849f63efdf3f7a7dd3bddf3f917799e95b156ff30410170e6e5e4acf545"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1170/magpie-cli-darwin-amd64"
      sha256 "6565d63f5b4c2fd82f0bb626d8ecb43b519be946453e633fe45e44a958d428e9"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1170/magpie-cli-linux-arm64"
      sha256 "32903dbdfd044c93c40fd6fffde051bd78bf3eb22c2a8df2ebcd9bc81ee02cc2"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1170/magpie-cli-linux-amd64"
      sha256 "3491936e9b726b8d0dfca882436e2192b6e1a41e3c7babc758acd616dded60c8"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
