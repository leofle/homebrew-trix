# Written by trix's release workflow (packaging/homebrew-formula.sh in
# leofle/trix). Edits here are replaced at the next release.
class Trix < Formula
  desc "Terminal workspace where coding agents live"
  homepage "https://github.com/leofle/trix"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/leofle/trix/releases/download/v1.3.1/trix-aarch64-apple-darwin.tar.gz"
      sha256 "8f68f27c066e0bb63e61c680c067d35d2ff32bc58ff0e5a551233dce1c1ccfa1"
    end
    on_intel do
      url "https://github.com/leofle/trix/releases/download/v1.3.1/trix-x86_64-apple-darwin.tar.gz"
      sha256 "b58ada4e3d760c22d081079ab7e8f7aa1df20c0c9f80aaae7b954710481459bc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/leofle/trix/releases/download/v1.3.1/trix-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "9c93f8e43c637e970933bdf3800c5c47cdf8056e698f782fece18f7b9a75c581"
    end
    on_intel do
      url "https://github.com/leofle/trix/releases/download/v1.3.1/trix-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7d9976b467a8b083b0517decbd56181f5cf75693e4f64aba7bc56eae2d442e65"
    end
  end

  def install
    bin.install "trix"
  end

  test do
    assert_match "trix #{version}", shell_output("#{bin}/trix --version")
  end
end
