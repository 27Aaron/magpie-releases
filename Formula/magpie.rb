class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1204/magpie-cli-darwin-arm64"
      sha256 "9b8ccd9ab09b928198a4a8dbf713ba5cf2db757921a29db0156315f35b193681"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1204/magpie-cli-darwin-amd64"
      sha256 "eb5cc8a3a37c0ed4633af358ab94411c299df0e84bdca0729889e4fa2309a928"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1204/magpie-cli-linux-arm64"
      sha256 "095d3e38b91d3cab55b627697e68aa55f7d33feacab0c9f37d94af8f7ffdfd74"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1204/magpie-cli-linux-amd64"
      sha256 "de02d5a03166a0caef2b77b8246b83a0100bfd225af0e34087c55b3ff69adbe5"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
