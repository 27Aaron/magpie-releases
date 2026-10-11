class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1189/magpie-cli-darwin-arm64"
      sha256 "249c5eab802b7337aef4e15848c094ee0e88e4c5dd4d07c6476afefec799cf1c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1189/magpie-cli-darwin-amd64"
      sha256 "aec695ad315f26f844764077f51dc123e8f64da391fa1fbeb6dc4d6b83294db4"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1189/magpie-cli-linux-arm64"
      sha256 "adb36c95528f4bd614d2310eb4bb7f9b3964bef70946bf041282c8e1fbc16396"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1189/magpie-cli-linux-amd64"
      sha256 "ea9112403d354589c44ca776a2d39556e6e6d0050bbdb2f2580e1e5e2cceb32c"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
