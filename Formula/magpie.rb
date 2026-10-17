class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1278/magpie-cli-darwin-arm64"
      sha256 "a6548029f4f597d880cf7d43b0cf9857f06ea3745e8971db95fd7ce6eec3d4a0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1278/magpie-cli-darwin-amd64"
      sha256 "607a777e9ad2de4dd4f43ecff76096c9a6f1d8b6831c252c9a05a3240125653b"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1278/magpie-cli-linux-arm64"
      sha256 "b7709b6e64cca2d8c76ff8095543d89311578c21b189ef1500cffd90ccb6a8d5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1278/magpie-cli-linux-amd64"
      sha256 "8dda4a2ba76c9e6e485b400a11cc80bb96d96e82548e65855cce197178333db3"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
