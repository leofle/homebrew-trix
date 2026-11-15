# Written by trix's release workflow (packaging/homebrew-formula.sh in
# leofle/trix). Edits here are replaced at the next release.
class Trix < Formula
  desc "Terminal workspace where coding agents live"
  homepage "https://github.com/leofle/trix"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/leofle/trix/releases/download/v1.1.5/trix-aarch64-apple-darwin.tar.gz"
      sha256 "93a5cc54cab57c7580431295f4f3c76f839ac4a3168c6f307280c8db1f7874a5"
    end
    on_intel do
      url "https://github.com/leofle/trix/releases/download/v1.1.5/trix-x86_64-apple-darwin.tar.gz"
      sha256 "62c253ec2cb361cdda4836133cb05893e2073610e70a6fa10f78a18f69208dd2"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/leofle/trix/releases/download/v1.1.5/trix-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "2c24d8919e5acd924f7478cac6ee20b7d661ed1b18af9ff8f5516afc6052ced0"
    end
    on_intel do
      url "https://github.com/leofle/trix/releases/download/v1.1.5/trix-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "43bb637978688ccfe9d82feed9a872cbec1eef7f7ecccd30201efc5a296f775c"
    end
  end

  def install
    bin.install "trix"
  end

  test do
    assert_match "trix #{version}", shell_output("#{bin}/trix --version")
  end
end
