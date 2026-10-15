class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1260/magpie-cli-darwin-arm64"
      sha256 "570918157810df898f6f2c5e1856c36f662279d27c0599575b6ec6860666dd18"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1260/magpie-cli-darwin-amd64"
      sha256 "d6f57cdd6443489daf36ff64b8af2816089917bc8df9af7b9a36e3f68c25990f"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1260/magpie-cli-linux-arm64"
      sha256 "ed99ab76886bc7b108b9a611ec9b85c8a23fd45e1701fba11e6e2374ce419065"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1260/magpie-cli-linux-amd64"
      sha256 "2a89ebd4a01e007ab882d85be2bb84ab8992cc7f061e4fb8cb20dc7928269431"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
