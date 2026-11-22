# Written by trix's release workflow (packaging/homebrew-formula.sh in
# leofle/trix). Edits here are replaced at the next release.
class Trix < Formula
  desc "Terminal workspace where coding agents live"
  homepage "https://github.com/leofle/trix"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/leofle/trix/releases/download/v1.4.2/trix-aarch64-apple-darwin.tar.gz"
      sha256 "fb4ee7b95ee5fe6b09ced8fd505bab3ff308fbb7eed52080406ff2afb73406d2"
    end
    on_intel do
      url "https://github.com/leofle/trix/releases/download/v1.4.2/trix-x86_64-apple-darwin.tar.gz"
      sha256 "9e37705a90e6d71d89d7cc7f933b59d5f7942e40b3d6a949ae26bf289ad1126e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/leofle/trix/releases/download/v1.4.2/trix-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "12f94fbcfc416c38076a0a07e05d9c00a5486a2efc66e3548e3658e69cb8f364"
    end
    on_intel do
      url "https://github.com/leofle/trix/releases/download/v1.4.2/trix-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "95396e70771da75c9f6b56185149718a77173d25f9566a1922727c173849e6a7"
    end
  end

  def install
    bin.install "trix"
  end

  test do
    assert_match "trix #{version}", shell_output("#{bin}/trix --version")
  end
end
