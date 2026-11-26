# Written by trix's release workflow (packaging/homebrew-formula.sh in
# leofle/trix). Edits here are replaced at the next release.
class Trix < Formula
  desc "Terminal workspace where coding agents live"
  homepage "https://github.com/leofle/trix"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/leofle/trix/releases/download/v1.7.5/trix-aarch64-apple-darwin.tar.gz"
      sha256 "ac72b8dc3d7520724679427865de7c57c5c6ca89db6ef615e2309a6ab6d55672"
    end
    on_intel do
      url "https://github.com/leofle/trix/releases/download/v1.7.5/trix-x86_64-apple-darwin.tar.gz"
      sha256 "89d32c0f7f6a0e78092b703889cc4502ad67b602e7674ad1403d6f0f542fc237"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/leofle/trix/releases/download/v1.7.5/trix-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "dda9a38324d486fa52fae31bc3b0fde658205cee4c81d9df31683ace9f392397"
    end
    on_intel do
      url "https://github.com/leofle/trix/releases/download/v1.7.5/trix-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "cd8ce8aea531fec6f016de457dfc1bff55c0d088f46a88be3079e6d9300de52d"
    end
  end

  def install
    bin.install "trix"
  end

  test do
    assert_match "trix #{version}", shell_output("#{bin}/trix --version")
  end
end
