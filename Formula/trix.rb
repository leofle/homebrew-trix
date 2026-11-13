# Written by trix's release workflow (packaging/homebrew-formula.sh in
# leofle/trix). Edits here are replaced at the next release.
class Trix < Formula
  desc "Terminal workspace where coding agents live"
  homepage "https://github.com/leofle/trix"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/leofle/trix/releases/download/v1.0.1/trix-aarch64-apple-darwin.tar.gz"
      sha256 "290090be801b73ef7eb9e0f183e135384ed236686e1b61d63920b2ee5380358d"
    end
    on_intel do
      url "https://github.com/leofle/trix/releases/download/v1.0.1/trix-x86_64-apple-darwin.tar.gz"
      sha256 "81998f91bd3649e42f614a7ec15dbde651f43c3b355679782c5364d0130c4a34"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/leofle/trix/releases/download/v1.0.1/trix-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "8eea22d263af8871d817e41fb892282d35b99a86037647e7539c9244e9144ca3"
    end
    on_intel do
      url "https://github.com/leofle/trix/releases/download/v1.0.1/trix-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "08cb0e0611485a5305128dc3ea615157f754bdca9d664ee37742e44297f9675e"
    end
  end

  def install
    bin.install "trix"
  end

  test do
    assert_match "trix #{version}", shell_output("#{bin}/trix --version")
  end
end
