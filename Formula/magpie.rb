class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1226/magpie-cli-darwin-arm64"
      sha256 "dba1dd723a31d99111fcb4ea93b7aee2a817905262ddbb3e0285db136b70b45c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1226/magpie-cli-darwin-amd64"
      sha256 "5a1153f421ec189f74b230341ecc1c6f5851d9c361a40940a13478c5085870b0"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1226/magpie-cli-linux-arm64"
      sha256 "b7d42636a858a3e9a2541478703b58057b73dc35c6e9062b258991d1e7de96bf"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1226/magpie-cli-linux-amd64"
      sha256 "aeae609ce4facfe7abede57da316879af1b331ec664564902999fffbf0be73c7"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
