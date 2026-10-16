class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1273/magpie-cli-darwin-arm64"
      sha256 "4dc7e577e609fd48496345b316e89cae970161feb04704b27043a96fc1c7d7b0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1273/magpie-cli-darwin-amd64"
      sha256 "771223ac8b309bc0f8b42bd1a72f581991555d037a3376c761e65fde534d9406"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1273/magpie-cli-linux-arm64"
      sha256 "6d3849b38a7902678460305aa360bfbb2ee834e793e701e9f52da232a5acb4c0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1273/magpie-cli-linux-amd64"
      sha256 "223832a4d4c93b49bc434c9083515f733bbf22d13f5a208c81927d97eba1033e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
