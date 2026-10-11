class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1201/magpie-cli-darwin-arm64"
      sha256 "92646a9db3dc5c09da00e2e7cea967d717782edbd60f893195f7236a76e7d539"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1201/magpie-cli-darwin-amd64"
      sha256 "6528345982e1ad7d8a6e468156a31f99cb237452bb6bd68fc99bf0f93b25c1f9"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1201/magpie-cli-linux-arm64"
      sha256 "1941d91c73e4bf2be4d773bd754632f6cddbc8ad84f873e1f50593c8aacd2387"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1201/magpie-cli-linux-amd64"
      sha256 "44e088f93cf3fe9c153f8727fbf637d43ba02eb28da38946ed65510caab007bd"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
