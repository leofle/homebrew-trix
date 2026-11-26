# Written by trix's release workflow (packaging/homebrew-formula.sh in
# leofle/trix). Edits here are replaced at the next release.
class Trix < Formula
  desc "Terminal workspace where coding agents live"
  homepage "https://github.com/leofle/trix"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/leofle/trix/releases/download/v1.7.6/trix-aarch64-apple-darwin.tar.gz"
      sha256 "04a8e5945f83e293c8db0bedd73c826eae17d8e97b5eb29ac53d2ad9a72302b4"
    end
    on_intel do
      url "https://github.com/leofle/trix/releases/download/v1.7.6/trix-x86_64-apple-darwin.tar.gz"
      sha256 "d4de89cf56ad990ae3dc57c98083a54fcf78ccc8b6f8a8952d605e490468dac8"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/leofle/trix/releases/download/v1.7.6/trix-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "53e2f0f9f9216ecfd90ebd78cbd5877cca91cd15ff214c7a84e27bba03b4deda"
    end
    on_intel do
      url "https://github.com/leofle/trix/releases/download/v1.7.6/trix-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "b0c9d6d388a00b093dc4476e133ab773b6683da1991319516d6d65264ed8962e"
    end
  end

  def install
    bin.install "trix"
  end

  test do
    assert_match "trix #{version}", shell_output("#{bin}/trix --version")
  end
end
