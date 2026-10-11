class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1186/magpie-cli-darwin-arm64"
      sha256 "f98a2df88a17e14894ca68b3d529051fe69ed76027b83f54b860e0664c34959f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1186/magpie-cli-darwin-amd64"
      sha256 "9c394424eb577c92c5cb111f651f8c6af11b4b06b1f97f9ce1e1216a301f70bd"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1186/magpie-cli-linux-arm64"
      sha256 "7827d75546a6800d679b4e612c80bd0ac175893dcf7cf7289aa9107bc004b55c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1186/magpie-cli-linux-amd64"
      sha256 "b900198a3cdfdc71a597fad8bb9526c5199c4f0cdaef24524800d85e9125be75"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
