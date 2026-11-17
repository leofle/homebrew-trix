# Written by trix's release workflow (packaging/homebrew-formula.sh in
# leofle/trix). Edits here are replaced at the next release.
class Trix < Formula
  desc "Terminal workspace where coding agents live"
  homepage "https://github.com/leofle/trix"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/leofle/trix/releases/download/v1.3.2/trix-aarch64-apple-darwin.tar.gz"
      sha256 "e2204aafc70a994e66394c960cd5c3ac8baf4555863c8b8419e0af27f69369aa"
    end
    on_intel do
      url "https://github.com/leofle/trix/releases/download/v1.3.2/trix-x86_64-apple-darwin.tar.gz"
      sha256 "2cb4d0838265397e44496ca725e613caec8a0bdd0970c8719c9059d892036002"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/leofle/trix/releases/download/v1.3.2/trix-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "866f8a567ae8d15459d3e710aae5d2eeb189ae2a2986ec21206ee6f6d462ca54"
    end
    on_intel do
      url "https://github.com/leofle/trix/releases/download/v1.3.2/trix-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "a603b7976aab7047bd322d4cf53b9d10d1bba1e7db4c0b63adc89375a10827ce"
    end
  end

  def install
    bin.install "trix"
  end

  test do
    assert_match "trix #{version}", shell_output("#{bin}/trix --version")
  end
end
