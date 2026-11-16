# Written by trix's release workflow (packaging/homebrew-formula.sh in
# leofle/trix). Edits here are replaced at the next release.
class Trix < Formula
  desc "Terminal workspace where coding agents live"
  homepage "https://github.com/leofle/trix"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/leofle/trix/releases/download/v1.2.3/trix-aarch64-apple-darwin.tar.gz"
      sha256 "6b6030aed9d8113bbe3d567ce7651c5f7aa82f363197e8a3d6946bee13c510b4"
    end
    on_intel do
      url "https://github.com/leofle/trix/releases/download/v1.2.3/trix-x86_64-apple-darwin.tar.gz"
      sha256 "6e02d633dc921ec9f94d4f9671f38cf683d0d3092f296f4b88782941879915f4"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/leofle/trix/releases/download/v1.2.3/trix-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "b9c4fdc4542ff643e8d94a8b3129ea8e14eb4f92ba9360b79d2cecc9fd3a0742"
    end
    on_intel do
      url "https://github.com/leofle/trix/releases/download/v1.2.3/trix-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ef23da0383bea2927c0784ee623041c38af589ff9713812172767fbb6f4a0461"
    end
  end

  def install
    bin.install "trix"
  end

  test do
    assert_match "trix #{version}", shell_output("#{bin}/trix --version")
  end
end
