class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1184/magpie-cli-darwin-arm64"
      sha256 "6784755fa2631b812fd7a3958669e2821a81cefe61cfaed2878f3abb39888575"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1184/magpie-cli-darwin-amd64"
      sha256 "0202f034cd9f77fe8c1cd85f702c14eb3d1bf1cd12a7d379dc94f8361e18ab6f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1184/magpie-cli-linux-arm64"
      sha256 "24d6a59be12ef857b490c5da5870b4c560434fb71a19f6422937de10161fcc53"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1184/magpie-cli-linux-amd64"
      sha256 "3db462632b4a4d7b4e42e219b62e742d3a4c8a35bfde8cb11c578a64b6de04e1"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
