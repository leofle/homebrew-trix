# Written by trix's release workflow (packaging/homebrew-formula.sh in
# leofle/trix). Edits here are replaced at the next release.
class Trix < Formula
  desc "Terminal workspace where coding agents live"
  homepage "https://github.com/leofle/trix"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/leofle/trix/releases/download/v1.7.3/trix-aarch64-apple-darwin.tar.gz"
      sha256 "fd19da5b789d40e6d0b8b3c8b025c4407ff0d4a8203d9ebcaa61aefcf2f3bcb2"
    end
    on_intel do
      url "https://github.com/leofle/trix/releases/download/v1.7.3/trix-x86_64-apple-darwin.tar.gz"
      sha256 "f4367e313c193e70490d66e83ce21fbbe2c1bedb1e856c8ed7203a5c2a0eb5c2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/leofle/trix/releases/download/v1.7.3/trix-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d9f9140477fccdad545c0eeb6576649ce6fb6024ce2b0edc1aad074e9a720b42"
    end
    on_intel do
      url "https://github.com/leofle/trix/releases/download/v1.7.3/trix-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b3610bd437fbdb83a59ed49fef15659d6d7ed943b6741a9b4b160df1f7212542"
    end
  end

  def install
    bin.install "trix"
  end

  test do
    assert_match "trix #{version}", shell_output("#{bin}/trix --version")
  end
end
