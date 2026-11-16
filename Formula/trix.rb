# Written by trix's release workflow (packaging/homebrew-formula.sh in
# leofle/trix). Edits here are replaced at the next release.
class Trix < Formula
  desc "Terminal workspace where coding agents live"
  homepage "https://github.com/leofle/trix"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/leofle/trix/releases/download/v1.2.1/trix-aarch64-apple-darwin.tar.gz"
      sha256 "4819ebac7c0b1ebdb29e08be9254c4f4ff6ec1f71d8721cc47337d61ba98e68a"
    end
    on_intel do
      url "https://github.com/leofle/trix/releases/download/v1.2.1/trix-x86_64-apple-darwin.tar.gz"
      sha256 "da2d4cb43e4be6958e960efc1f1fc4eb71b8b4f55b3763af7f9f973c13f673cb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/leofle/trix/releases/download/v1.2.1/trix-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8d5726d2a887f5260a63c2d9ff3b5457ee61da62b2d0ceb4204cb7c4d7a133c9"
    end
    on_intel do
      url "https://github.com/leofle/trix/releases/download/v1.2.1/trix-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bf6375a322a22730d0cbe24bb9b8e60ee3b841fb1896d77601ea344dc840a004"
    end
  end

  def install
    bin.install "trix"
  end

  test do
    assert_match "trix #{version}", shell_output("#{bin}/trix --version")
  end
end
