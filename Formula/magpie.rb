class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1277/magpie-cli-darwin-arm64"
      sha256 "4994b1f35307e79de3fb19dcebd56a77cbbcbeeae39ff16f429797d535f86fd0"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1277/magpie-cli-darwin-amd64"
      sha256 "4844f17aa78e21cafa08b2f1546ee0fc5faffe50fc841dbfd3ddeda4fd209bea"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1277/magpie-cli-linux-arm64"
      sha256 "852cccf3db9910113f6efa1fbf6c88b87dbc5f0627612678a320234f8e8cb91f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1277/magpie-cli-linux-amd64"
      sha256 "23e67543e62afc49fbc18188155f1b430264c90317879f2c9ada9c500a2419a6"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
