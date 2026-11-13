# Written by trix's release workflow (packaging/homebrew-formula.sh in
# leofle/trix). Edits here are replaced at the next release.
class Trix < Formula
  desc "Terminal workspace where coding agents live"
  homepage "https://github.com/leofle/trix"
  version "1.0.0"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/leofle/trix/releases/download/v1.0.0/trix-aarch64-apple-darwin.tar.gz"
      sha256 "2facb7c88661fa8781ceaaec3eb1cdef83e38d068d363de24a846078a2ba1cbb"
    end
    on_intel do
      url "https://github.com/leofle/trix/releases/download/v1.0.0/trix-x86_64-apple-darwin.tar.gz"
      sha256 "88a53ae59450ec7b77a0f4529a10a5564be0eda1d1266195826cf124483e7ef8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/leofle/trix/releases/download/v1.0.0/trix-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "af9c6dac0213d44727b736b99bc3158d5247c015e0f42e7a4e54bd4b37082368"
    end
    on_intel do
      url "https://github.com/leofle/trix/releases/download/v1.0.0/trix-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "4bc762a432c3b5095f59850a2e6106d053cc2261ad8325bbecce6fd8ea202118"
    end
  end

  def install
    bin.install "trix"
  end

  test do
    assert_match "trix #{version}", shell_output("#{bin}/trix --version")
  end
end
