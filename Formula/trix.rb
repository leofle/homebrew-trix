# Written by trix's release workflow (packaging/homebrew-formula.sh in
# leofle/trix). Edits here are replaced at the next release.
class Trix < Formula
  desc "Terminal workspace where coding agents live"
  homepage "https://github.com/leofle/trix"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/leofle/trix/releases/download/v1.0.8/trix-aarch64-apple-darwin.tar.gz"
      sha256 "e45dae12f5e7690d0081c287cbce25632751ca8246d000cad489c0d3e1e5b8a1"
    end
    on_intel do
      url "https://github.com/leofle/trix/releases/download/v1.0.8/trix-x86_64-apple-darwin.tar.gz"
      sha256 "9c05b6f05a476f03f2d38753c1d00e79235e5fd71dd2d455ae153726ad4d8aa3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/leofle/trix/releases/download/v1.0.8/trix-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "86f3a0d428a18d160df9f61918ba4709f6592e707c8db67f24a659517736157d"
    end
    on_intel do
      url "https://github.com/leofle/trix/releases/download/v1.0.8/trix-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5bb7e4f0ec509252b7c87e21253fd871d3bf737d6e56d23b331df2495e32cd64"
    end
  end

  def install
    bin.install "trix"
  end

  test do
    assert_match "trix #{version}", shell_output("#{bin}/trix --version")
  end
end
