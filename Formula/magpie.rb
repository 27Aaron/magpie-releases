class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1195/magpie-cli-darwin-arm64"
      sha256 "151f5eada3d67124cd1e87fc3449f1af4172ede11b3cfb0606986e8fad6f58be"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1195/magpie-cli-darwin-amd64"
      sha256 "77a92acb098e7e22d8c6dc80b1abff407240bd812470ff8e2aea6d600139fd0e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1195/magpie-cli-linux-arm64"
      sha256 "f5271325e9122d693717137fa3c8d357241649c1431e6a951cc2adb05404c4d7"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1195/magpie-cli-linux-amd64"
      sha256 "35895586147fab71c7a79b442207494148aeaa12a35c1c48e04588cae9560a05"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
