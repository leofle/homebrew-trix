# Written by trix's release workflow (packaging/homebrew-formula.sh in
# leofle/trix). Edits here are replaced at the next release.
class Trix < Formula
  desc "Terminal workspace where coding agents live"
  homepage "https://github.com/leofle/trix"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/leofle/trix/releases/download/v1.2.0/trix-aarch64-apple-darwin.tar.gz"
      sha256 "132556231444f32950296831d689e768a3823f841faac3a7a26a6c869c3ccf6d"
    end
    on_intel do
      url "https://github.com/leofle/trix/releases/download/v1.2.0/trix-x86_64-apple-darwin.tar.gz"
      sha256 "46dc9524008bf4990b074dacb2635155daa21270e7d48089a16963ecababb7e4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/leofle/trix/releases/download/v1.2.0/trix-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "4e2d6de1d00b420d8d5381b122cf9d803011c8b1beea483f5175d61d1877e001"
    end
    on_intel do
      url "https://github.com/leofle/trix/releases/download/v1.2.0/trix-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "56547b8194bc23e6fa6944b9f5837697509555ecabbd044d52dd3327c36fd05a"
    end
  end

  def install
    bin.install "trix"
  end

  test do
    assert_match "trix #{version}", shell_output("#{bin}/trix --version")
  end
end
