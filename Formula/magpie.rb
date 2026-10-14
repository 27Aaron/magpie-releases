class Magpie < Formula
  desc "Pick the model each AI coding agent on your machine uses"
  homepage "https://usemagpie.ai/"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1240/magpie-cli-darwin-arm64"
      sha256 "661191afb9d71eb600896fa07ff04b988ffd3a58cebe3a2616ba256da4534f9d"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1240/magpie-cli-darwin-amd64"
      sha256 "32828688b7285ee8b4750ee2c897e0dc6609b9956b8be2a236fe12d4a76096d5"
    end
  end
  on_linux do
    on_arm do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1240/magpie-cli-linux-arm64"
      sha256 "c273f3a8f85191f116d9491804f3fe760235ca7c49548a48cd2a3e0d71c94822"
    end
    on_intel do
      url "https://github.com/yetone/magpie-releases/releases/download/v0.1.1240/magpie-cli-linux-amd64"
      sha256 "33d28dc309116c9f4f09290bca998fc7f72bffbe8392695e0722c9122c083177"
    end
  end

  def install
    bin.install Dir["magpie-cli-*"].first => "magpie"
  end

  test do
    assert_match "magpie #{version}", shell_output("#{bin}/magpie --version")
  end
end
