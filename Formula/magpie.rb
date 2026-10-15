class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1261/magpie-cli-darwin-arm64"
      sha256 "b51bf0c17f7ff6a9a172c478a99c465577bad402a897478d11be4aeaef31dc43"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1261/magpie-cli-darwin-amd64"
      sha256 "d2b9319fd8ffbc613259c52830da5e4be58faaee05048f44dff8f87a9351d050"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1261/magpie-cli-linux-arm64"
      sha256 "5cb2481d7512f512befee1088452e3cf81fe31ece3f86a73f67b480327b42c22"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1261/magpie-cli-linux-amd64"
      sha256 "b795de95af1ef2513aec4b7d6cdb0bef4d3b03d85943b282d69d2eb1d63ff663"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
