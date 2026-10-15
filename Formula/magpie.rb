class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1252/magpie-cli-darwin-arm64"
      sha256 "e53542a53c9abe0039561f95de084f7e0d42655da5c144e261b46e6053c1a8d5"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1252/magpie-cli-darwin-amd64"
      sha256 "9a091504c3054645fa42c1b6ea49002d5137651bfa27d882a9b476f82755cff9"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1252/magpie-cli-linux-arm64"
      sha256 "24a1c7d93379ff5267e284aa09f14b9339282c1fb3aff10fdaacde4680b3006f"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1252/magpie-cli-linux-amd64"
      sha256 "9c488346e0f71347d106908ae9e122f672c93a0f8544596e0e66e8f1142a0562"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
