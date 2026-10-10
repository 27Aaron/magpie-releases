class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1174/magpie-cli-darwin-arm64"
      sha256 "4f18cc428990ca2e929b85d64d055fc217c88c059775904306a41cdb746ec29b"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1174/magpie-cli-darwin-amd64"
      sha256 "e419648d32590d5f36b82c343fd9b3655512a94e36ad33dcb523533686a8999c"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1174/magpie-cli-linux-arm64"
      sha256 "ba5dfd56259095a29f3476d54d499975e53efb63a81d32d81568960a44be780a"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1174/magpie-cli-linux-amd64"
      sha256 "b86ac5482bbf7519ed7972c866fa2ff6ef16849432e4bd07bd0546a447a1b715"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
