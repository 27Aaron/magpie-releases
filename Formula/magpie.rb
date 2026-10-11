class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1181/magpie-cli-darwin-arm64"
      sha256 "d4af9d32062f37952bbf489d66ab4c07b7711117778a3854691432815cb69696"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1181/magpie-cli-darwin-amd64"
      sha256 "19666b35dc371899919671d1d1608cba0d579f7b1fa3b29a7078e0c55f1dd5f1"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1181/magpie-cli-linux-arm64"
      sha256 "46e25561e8741291ba375651073e51886e02490a8e7e3b6de85a05a0473ea300"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1181/magpie-cli-linux-amd64"
      sha256 "07ea2703532e837e1a6d1f6a853295e1e1fdf66a50bc6e057aff81204ab36a9a"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
