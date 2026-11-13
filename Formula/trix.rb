# Written by trix's release workflow (packaging/homebrew-formula.sh in
# leofle/trix). Edits here are replaced at the next release.
class Trix < Formula
  desc "Terminal workspace where coding agents live"
  homepage "https://github.com/leofle/trix"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/leofle/trix/releases/download/v1.0.2/trix-aarch64-apple-darwin.tar.gz"
      sha256 "b3274efb49e3b5c3d196ba778e8f7c33f94ccaf674b08a55d11b461f0f0897b6"
    end
    on_intel do
      url "https://github.com/leofle/trix/releases/download/v1.0.2/trix-x86_64-apple-darwin.tar.gz"
      sha256 "622aecbf5e0b12a894e107ccb83e5d65229a26c24ea7c3c4e68eab065ceb8358"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/leofle/trix/releases/download/v1.0.2/trix-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b6733eafdc496bbaee969c4e806e6891d7a7a72e97d9b7962449e5ddbb0ff044"
    end
    on_intel do
      url "https://github.com/leofle/trix/releases/download/v1.0.2/trix-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "68a5a7a3a05d36f7066ef1296705d7348d7d25bf6dd326e1ecd13d90e86f579b"
    end
  end

  def install
    bin.install "trix"
  end

  test do
    assert_match "trix #{version}", shell_output("#{bin}/trix --version")
  end
end
