# Written by trix's release workflow (packaging/homebrew-formula.sh in
# leofle/trix). Edits here are replaced at the next release.
class Trix < Formula
  desc "Terminal workspace where coding agents live"
  homepage "https://github.com/leofle/trix"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/leofle/trix/releases/download/v1.0.6/trix-aarch64-apple-darwin.tar.gz"
      sha256 "209e564eaca1fb1e46fa168fdb685771239a32eed118d12d04fa41f0cfa6f423"
    end
    on_intel do
      url "https://github.com/leofle/trix/releases/download/v1.0.6/trix-x86_64-apple-darwin.tar.gz"
      sha256 "8f4f1d1f28073b72aa4d125d1a22e9849cb0ba82395b3631f2c7a8b1a5f4832a"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/leofle/trix/releases/download/v1.0.6/trix-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "39092be2242d61601a5ce83155fa81c8c155a940d92760a5c3d508c86ec0f50b"
    end
    on_intel do
      url "https://github.com/leofle/trix/releases/download/v1.0.6/trix-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "614c9b2d63aa5d48dc7c6574a249f36bf2839185a53c7f684740e7d5b516910b"
    end
  end

  def install
    bin.install "trix"
  end

  test do
    assert_match "trix #{version}", shell_output("#{bin}/trix --version")
  end
end
