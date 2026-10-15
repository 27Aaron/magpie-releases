class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1246/magpie-cli-darwin-arm64"
      sha256 "750b9a9aaa0bd795d39370a0ee76e02b5e3998e25aaf3cfc70db5337fcda7b1c"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1246/magpie-cli-darwin-amd64"
      sha256 "de46c2893a7c0a030b07b252d4f3a4deafb70a801bed02f9492476aace13651e"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1246/magpie-cli-linux-arm64"
      sha256 "7bfa7bb1ce0c7692fcb08e3d53c683a0331d7c26c4eb7efb87f8fc4b7da5af6d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1246/magpie-cli-linux-amd64"
      sha256 "4652307268adf78fced7abda7cb989b8dd4c630f720f710fd86cf04809df3116"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
