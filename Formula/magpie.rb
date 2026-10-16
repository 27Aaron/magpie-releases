class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1267/magpie-cli-darwin-arm64"
      sha256 "dcb5bf369419a4879b69eb3ae7a4d27ada704d6cd97edd10b15581645cb7a87f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1267/magpie-cli-darwin-amd64"
      sha256 "ebfeea4541d11cbdd031092b2ae1383b86b16a6f83e056b6c73dce43eaf0e497"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1267/magpie-cli-linux-arm64"
      sha256 "31cf3f8d0598c7554b3bcd44417e45594fc97df8fc1b3ba47984c4a047c7dd80"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1267/magpie-cli-linux-amd64"
      sha256 "2352c0a6eb60fd727f07e3bc187d6ce048f72c1e10af5104ceb5a1b74e97b314"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
