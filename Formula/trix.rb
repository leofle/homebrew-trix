# Written by trix's release workflow (packaging/homebrew-formula.sh in
# leofle/trix). Edits here are replaced at the next release.
class Trix < Formula
  desc "Terminal workspace where coding agents live"
  homepage "https://github.com/leofle/trix"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/leofle/trix/releases/download/v1.7.8/trix-aarch64-apple-darwin.tar.gz"
      sha256 "a996c3de972321f7aa673d0cae1ecc1a3ec4c5b936dedbb05a6ed347b7454216"
    end
    on_intel do
      url "https://github.com/leofle/trix/releases/download/v1.7.8/trix-x86_64-apple-darwin.tar.gz"
      sha256 "6a6466b6b3a6d40bb624008c2bcf21e753e188126cdfc7799442c241b142abdc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/leofle/trix/releases/download/v1.7.8/trix-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "07d56451aa694fc78e35e32639d569197e7384789f9df44b1132fea10dcd3d76"
    end
    on_intel do
      url "https://github.com/leofle/trix/releases/download/v1.7.8/trix-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0c0da5d67351605aa198eeba1a527581834e17120dd683527c2905c721ac1436"
    end
  end

  def install
    bin.install "trix"
  end

  test do
    assert_match "trix #{version}", shell_output("#{bin}/trix --version")
  end
end
