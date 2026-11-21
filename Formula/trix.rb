# Written by trix's release workflow (packaging/homebrew-formula.sh in
# leofle/trix). Edits here are replaced at the next release.
class Trix < Formula
  desc "Terminal workspace where coding agents live"
  homepage "https://github.com/leofle/trix"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/leofle/trix/releases/download/v1.4.1/trix-aarch64-apple-darwin.tar.gz"
      sha256 "caaf4d9f55843f32d80f70c2600897424d375680cd6c37f3d7216679e110f941"
    end
    on_intel do
      url "https://github.com/leofle/trix/releases/download/v1.4.1/trix-x86_64-apple-darwin.tar.gz"
      sha256 "041472001b483d8d7ef7f71ad5f86906f01c2593d93eb0209c2d22cc014eb4d3"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/leofle/trix/releases/download/v1.4.1/trix-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ef3f38118cb1c8d925c465885abcf5364cd45a136488d5de3eb3dcacd54ebfdb"
    end
    on_intel do
      url "https://github.com/leofle/trix/releases/download/v1.4.1/trix-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "92c5ce3653527470d0337f9943028580954ece3e3eb073b0c88bbf9ab0f04601"
    end
  end

  def install
    bin.install "trix"
  end

  test do
    assert_match "trix #{version}", shell_output("#{bin}/trix --version")
  end
end
