# Written by trix's release workflow (packaging/homebrew-formula.sh in
# leofle/trix). Edits here are replaced at the next release.
class Trix < Formula
  desc "Terminal workspace where coding agents live"
  homepage "https://github.com/leofle/trix"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/leofle/trix/releases/download/v1.6.0/trix-aarch64-apple-darwin.tar.gz"
      sha256 "5b4754388132209f6b2dd58b5ed4ec691e5aa3897f79678001f849c3cc39646b"
    end
    on_intel do
      url "https://github.com/leofle/trix/releases/download/v1.6.0/trix-x86_64-apple-darwin.tar.gz"
      sha256 "5f0be4ee4d1f42805d3196ffe8c028b7208354919b5d0cf7cbf27ccbc22e2d74"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/leofle/trix/releases/download/v1.6.0/trix-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "523a3b25f2a496649aa5829fc05644c96f2edb652b428364c863faf1779532c5"
    end
    on_intel do
      url "https://github.com/leofle/trix/releases/download/v1.6.0/trix-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5c105f81a2470f7bfeb0b03da64bcd002b2a369be923c0cb3bb01c2ffe18b541"
    end
  end

  def install
    bin.install "trix"
  end

  test do
    assert_match "trix #{version}", shell_output("#{bin}/trix --version")
  end
end
