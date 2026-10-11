class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1198/magpie-cli-darwin-arm64"
      sha256 "aa03958c1988e4b0da997a1f2676bc49bd0b217efb2dbf469aa184dc589de80b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1198/magpie-cli-darwin-amd64"
      sha256 "ad2d740f49b6cc25b9c2de8110145fb2cc413ada7bfbc37aaa2f21ade0d5695c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1198/magpie-cli-linux-arm64"
      sha256 "f90289c96f60948adbe1e31b00bb0b1197db73cf55507cd25b872a9fb99adb74"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1198/magpie-cli-linux-amd64"
      sha256 "7ecb12c457401ac9ddc2489f72282f80481cd8b4fb6fa224551f56679ddb4626"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
