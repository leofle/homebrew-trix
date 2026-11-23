# Written by trix's release workflow (packaging/homebrew-formula.sh in
# leofle/trix). Edits here are replaced at the next release.
class Trix < Formula
  desc "Terminal workspace where coding agents live"
  homepage "https://github.com/leofle/trix"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/leofle/trix/releases/download/v1.6.1/trix-aarch64-apple-darwin.tar.gz"
      sha256 "07d72908006dfc2e6e5d20df9002e3d215290bdc5969e46976f23631c03d3f35"
    end
    on_intel do
      url "https://github.com/leofle/trix/releases/download/v1.6.1/trix-x86_64-apple-darwin.tar.gz"
      sha256 "1dce793fe8a02bdffd22db4b16d17f9ae2823fb16b7b39cd6e64975dd5ca84a9"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/leofle/trix/releases/download/v1.6.1/trix-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b248dddfce4fe941693bfb28b0b9bfff7fdbfbfd9351d90fae4c5082ec36d6df"
    end
    on_intel do
      url "https://github.com/leofle/trix/releases/download/v1.6.1/trix-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "5319b14b7b437c9f32cd7e1e579673be4c174ef50eab7f5c72f7dc89f9919171"
    end
  end

  def install
    bin.install "trix"
  end

  test do
    assert_match "trix #{version}", shell_output("#{bin}/trix --version")
  end
end
