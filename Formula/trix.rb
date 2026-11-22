# Written by trix's release workflow (packaging/homebrew-formula.sh in
# leofle/trix). Edits here are replaced at the next release.
class Trix < Formula
  desc "Terminal workspace where coding agents live"
  homepage "https://github.com/leofle/trix"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/leofle/trix/releases/download/v1.4.3/trix-aarch64-apple-darwin.tar.gz"
      sha256 "8fd2b48c6bc8359f9a407d7824aa2386d248487807479d831073b347636fb129"
    end
    on_intel do
      url "https://github.com/leofle/trix/releases/download/v1.4.3/trix-x86_64-apple-darwin.tar.gz"
      sha256 "20cac5e980795bc460c359c4dda7e64edcf4fb7f4c5f54ef1639062c8ce895a1"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/leofle/trix/releases/download/v1.4.3/trix-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "708d3f6416788f9f5b9e83f12b09b884da956b73dc08ba69081074d0f58bc95d"
    end
    on_intel do
      url "https://github.com/leofle/trix/releases/download/v1.4.3/trix-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "0d6d4bf422e2086cfea70a555597d641eefb1b9fa04a693910b6852e00c4266c"
    end
  end

  def install
    bin.install "trix"
  end

  test do
    assert_match "trix #{version}", shell_output("#{bin}/trix --version")
  end
end
