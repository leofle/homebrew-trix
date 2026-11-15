# Written by trix's release workflow (packaging/homebrew-formula.sh in
# leofle/trix). Edits here are replaced at the next release.
class Trix < Formula
  desc "Terminal workspace where coding agents live"
  homepage "https://github.com/leofle/trix"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/leofle/trix/releases/download/v1.1.4/trix-aarch64-apple-darwin.tar.gz"
      sha256 "5df64a28cb01a4858e2b3be77d01d811ab34df5e07a9e685dddfa2417e3caf8d"
    end
    on_intel do
      url "https://github.com/leofle/trix/releases/download/v1.1.4/trix-x86_64-apple-darwin.tar.gz"
      sha256 "69f085c7eb8880d33b5d65eb2b8af314f187c38f16f92da6fc30325f25e9030d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/leofle/trix/releases/download/v1.1.4/trix-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "f03d06046b71bb70871e897bad0569f239c2e501ef505669145c49e346379a8a"
    end
    on_intel do
      url "https://github.com/leofle/trix/releases/download/v1.1.4/trix-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e6e665e169a736d8a0b2270f6b31a0a4fe0e79b4c683bbca7608f24ae885175f"
    end
  end

  def install
    bin.install "trix"
  end

  test do
    assert_match "trix #{version}", shell_output("#{bin}/trix --version")
  end
end
