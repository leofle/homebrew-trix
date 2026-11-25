# Written by trix's release workflow (packaging/homebrew-formula.sh in
# leofle/trix). Edits here are replaced at the next release.
class Trix < Formula
  desc "Terminal workspace where coding agents live"
  homepage "https://github.com/leofle/trix"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/leofle/trix/releases/download/v1.7.0/trix-aarch64-apple-darwin.tar.gz"
      sha256 "202cf6c278129bc847b1542e121a6d8362c6238a74fa1f6c6828ba1f37789084"
    end
    on_intel do
      url "https://github.com/leofle/trix/releases/download/v1.7.0/trix-x86_64-apple-darwin.tar.gz"
      sha256 "91aaedf71c94db57bb5523abe3d1580dc18d5441ea628060cfcba15dc6f1b4ed"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/leofle/trix/releases/download/v1.7.0/trix-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3f53c26b11344f5937c76d2661c5e31765fa206e792f445e7da75901d2132e44"
    end
    on_intel do
      url "https://github.com/leofle/trix/releases/download/v1.7.0/trix-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a52609f5bf2d2f95ea820403c8e39f4fd9cdf0165b713605abcd528c518f4c05"
    end
  end

  def install
    bin.install "trix"
  end

  test do
    assert_match "trix #{version}", shell_output("#{bin}/trix --version")
  end
end
