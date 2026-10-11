class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1202/magpie-cli-darwin-arm64"
      sha256 "d55fc532b6a60c13588c5773e8b6e62cae660bb0557c47f062c5c989fd290a88"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1202/magpie-cli-darwin-amd64"
      sha256 "e6a433075961376ea217defb0ce13bb9c4ec9abab70bc85cfed966e014462b9e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1202/magpie-cli-linux-arm64"
      sha256 "9a778220efeefbc2faa80433039ff94b4cceff0ec707c486372de86ef70dd9b3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1202/magpie-cli-linux-amd64"
      sha256 "400152f57315f6d5ce00387f065b4e82a76d74d25a74561e4f6e367c923870fb"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
