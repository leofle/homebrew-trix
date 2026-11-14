# Written by trix's release workflow (packaging/homebrew-formula.sh in
# leofle/trix). Edits here are replaced at the next release.
class Trix < Formula
  desc "Terminal workspace where coding agents live"
  homepage "https://github.com/leofle/trix"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/leofle/trix/releases/download/v1.0.7/trix-aarch64-apple-darwin.tar.gz"
      sha256 "33a1e56f599641257a3a8cb03ff086dac580caeced01281e64c3e669ddc30717"
    end
    on_intel do
      url "https://github.com/leofle/trix/releases/download/v1.0.7/trix-x86_64-apple-darwin.tar.gz"
      sha256 "2f739c2f6a1fa732eea74d554320134c890b777a379aafdd89f0981fba9fc098"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/leofle/trix/releases/download/v1.0.7/trix-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "c3af88c656d389e3829796eb5f16f0419daeb097023cbbe4b07755ebf5aa3218"
    end
    on_intel do
      url "https://github.com/leofle/trix/releases/download/v1.0.7/trix-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a34445d54b05e7cfb96f391e1edca58ede1227d1538b1f94060bad8961c707c1"
    end
  end

  def install
    bin.install "trix"
  end

  test do
    assert_match "trix #{version}", shell_output("#{bin}/trix --version")
  end
end
