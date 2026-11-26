# Written by trix's release workflow (packaging/homebrew-formula.sh in
# leofle/trix). Edits here are replaced at the next release.
class Trix < Formula
  desc "Terminal workspace where coding agents live"
  homepage "https://github.com/leofle/trix"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/leofle/trix/releases/download/v1.7.4/trix-aarch64-apple-darwin.tar.gz"
      sha256 "4d573f82f1da8b513ed75ae24af8d31f3b2ccf0c5cbd5cc193a12e292a565f86"
    end
    on_intel do
      url "https://github.com/leofle/trix/releases/download/v1.7.4/trix-x86_64-apple-darwin.tar.gz"
      sha256 "377be3425d3d84c632243ea7a73d426f142ca5816626c9939fa15728c154c90f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/leofle/trix/releases/download/v1.7.4/trix-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "42dcfed39dfb05cc32f4fe22ab58cc306922a1e5553ebcb158bce02c2de7693f"
    end
    on_intel do
      url "https://github.com/leofle/trix/releases/download/v1.7.4/trix-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "e68efde44eb222d73d497c8b6c82560eb32eaa52fb9d9141d519b9758c4b319b"
    end
  end

  def install
    bin.install "trix"
  end

  test do
    assert_match "trix #{version}", shell_output("#{bin}/trix --version")
  end
end
