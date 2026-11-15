# Written by trix's release workflow (packaging/homebrew-formula.sh in
# leofle/trix). Edits here are replaced at the next release.
class Trix < Formula
  desc "Terminal workspace where coding agents live"
  homepage "https://github.com/leofle/trix"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/leofle/trix/releases/download/v1.1.2/trix-aarch64-apple-darwin.tar.gz"
      sha256 "7d650e985dc3fc860f9ec1e97ddb1b858bfec6fa1ef0768d100667d6c0fd9f33"
    end
    on_intel do
      url "https://github.com/leofle/trix/releases/download/v1.1.2/trix-x86_64-apple-darwin.tar.gz"
      sha256 "08b34209591f6494b3052483000a2d4b58d377338e9a66f4dd0f5383fb611f2f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/leofle/trix/releases/download/v1.1.2/trix-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "fb0fa8d43e374977ebb008e97478e9926979891de9eaab46bdca7534ecc3f180"
    end
    on_intel do
      url "https://github.com/leofle/trix/releases/download/v1.1.2/trix-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "1a4c7b14b64c90f3dcfb541ed9236ab78883d134ca5ff6da1ed2f5fb0ad3d5a6"
    end
  end

  def install
    bin.install "trix"
  end

  test do
    assert_match "trix #{version}", shell_output("#{bin}/trix --version")
  end
end
