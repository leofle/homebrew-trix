# Written by trix's release workflow (packaging/homebrew-formula.sh in
# leofle/trix). Edits here are replaced at the next release.
class Trix < Formula
  desc "Terminal workspace where coding agents live"
  homepage "https://github.com/leofle/trix"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/leofle/trix/releases/download/v1.2.2/trix-aarch64-apple-darwin.tar.gz"
      sha256 "bc978f1aadcc94e50fa0820e9fed8fe5ef144a96c6fff29f4cbe4d2021051b21"
    end
    on_intel do
      url "https://github.com/leofle/trix/releases/download/v1.2.2/trix-x86_64-apple-darwin.tar.gz"
      sha256 "5abe45a2d852be01a0192142a426a7095acbc039d8e9beee0f040a38204e62f6"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/leofle/trix/releases/download/v1.2.2/trix-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "0436188e74793660d4278ba409d54e6f4e05d1abd50a21ac58bcc9a63fb2fb94"
    end
    on_intel do
      url "https://github.com/leofle/trix/releases/download/v1.2.2/trix-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "62f7794dee172edf2fd265d0c4a962f530f95cef7f41c992887bcd2fe00c879a"
    end
  end

  def install
    bin.install "trix"
  end

  test do
    assert_match "trix #{version}", shell_output("#{bin}/trix --version")
  end
end
