# Written by trix's release workflow (packaging/homebrew-formula.sh in
# leofle/trix). Edits here are replaced at the next release.
class Trix < Formula
  desc "Terminal workspace where coding agents live"
  homepage "https://github.com/leofle/trix"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/leofle/trix/releases/download/v1.1.0/trix-aarch64-apple-darwin.tar.gz"
      sha256 "e5c6a8bb59745b861b3a48a2cf5378418d5772d283ccae9d1a2b9425b212415b"
    end
    on_intel do
      url "https://github.com/leofle/trix/releases/download/v1.1.0/trix-x86_64-apple-darwin.tar.gz"
      sha256 "f3421124f5762eacc7d20ffb2127dd3e35486cfd9c42a372db6e7fa22a361a80"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/leofle/trix/releases/download/v1.1.0/trix-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3f73846cc93575cfefc13ce9ffd4ae262bf2f629fb98eae5c18bf01c2ec6bbe8"
    end
    on_intel do
      url "https://github.com/leofle/trix/releases/download/v1.1.0/trix-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a02c1d28e5cac3eeb363f9c3cb3b6e2d36ff281f3d0835f17b83088014acbd7f"
    end
  end

  def install
    bin.install "trix"
  end

  test do
    assert_match "trix #{version}", shell_output("#{bin}/trix --version")
  end
end
