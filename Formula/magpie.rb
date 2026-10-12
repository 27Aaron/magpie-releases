class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1206/magpie-cli-darwin-arm64"
      sha256 "70884a1773f90e497ad8c6d7f516ec0eea768341edafc7583c818773fbbb2aa7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1206/magpie-cli-darwin-amd64"
      sha256 "fb0f1d49a5ca78b9b78196d8a251a3beab556aa563cbccc2e5e40c229a177b62"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1206/magpie-cli-linux-arm64"
      sha256 "ae5a95dd4f76b489e7e608b5ddafaaf46cf5fcf7daa9f87d56b2905ac5d9790e"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1206/magpie-cli-linux-amd64"
      sha256 "b0482fe4af8c3a533dd8cac6ec8732b7ab7282ce09b287c140e4d93dc0a01aa9"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
