class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1188/magpie-cli-darwin-arm64"
      sha256 "1b527f9406710f6ad8cb39f64581717cc47c8487fe2defdf3f4082130aeb3bd3"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1188/magpie-cli-darwin-amd64"
      sha256 "a7454440752c395668c75bf3656e2cfe6311d6fbc716a4cf2579d15dc3560fca"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1188/magpie-cli-linux-arm64"
      sha256 "0090034022e39a3198b9832a1b37456fe687929d8c5f8acad14a761f8dcc5eab"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1188/magpie-cli-linux-amd64"
      sha256 "210972333e959569a8355688e58bbde7556b0694020a62bf560b7929b95575ad"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
