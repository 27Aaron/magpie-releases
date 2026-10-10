class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1169/magpie-cli-darwin-arm64"
      sha256 "9bae9883594883d177271afaf641be05994422ea376ee424e8d7299765c22992"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1169/magpie-cli-darwin-amd64"
      sha256 "a3631c54d4695e50ebcefd192be247ccc73f5845417f48eb4e97d8c419c2efb8"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1169/magpie-cli-linux-arm64"
      sha256 "1540274ffcc295b0d27511a9a3dfe4ae417a8b4e2861c6b3e7359b871991e213"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1169/magpie-cli-linux-amd64"
      sha256 "dc6eb901140cc1a02f67b2cbad49d1ad6b394e85d1c85039dd9d1afe6220202e"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
