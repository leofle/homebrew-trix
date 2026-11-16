# Written by trix's release workflow (packaging/homebrew-formula.sh in
# leofle/trix). Edits here are replaced at the next release.
class Trix < Formula
  desc "Terminal workspace where coding agents live"
  homepage "https://github.com/leofle/trix"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/leofle/trix/releases/download/v1.2.4/trix-aarch64-apple-darwin.tar.gz"
      sha256 "e1f425751625e960074ce7af7b67596ae0ac9c7c25a473cea895eb78ddfd87d1"
    end
    on_intel do
      url "https://github.com/leofle/trix/releases/download/v1.2.4/trix-x86_64-apple-darwin.tar.gz"
      sha256 "d5e8912b2e840f40bbebd3353c8abbb55f4fc4f391e49df5d81e259bf053647e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/leofle/trix/releases/download/v1.2.4/trix-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "3da5bc4f62403d0a52035ad8f8fe4bd89e598662efffbb1da1459a04faca1c7d"
    end
    on_intel do
      url "https://github.com/leofle/trix/releases/download/v1.2.4/trix-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "facfa8f3c712a0a26420ca24859fa60f86b8c0d6898ba5fc756efe88b5a2c202"
    end
  end

  def install
    bin.install "trix"
  end

  test do
    assert_match "trix #{version}", shell_output("#{bin}/trix --version")
  end
end
