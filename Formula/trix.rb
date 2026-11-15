# Written by trix's release workflow (packaging/homebrew-formula.sh in
# leofle/trix). Edits here are replaced at the next release.
class Trix < Formula
  desc "Terminal workspace where coding agents live"
  homepage "https://github.com/leofle/trix"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/leofle/trix/releases/download/v1.1.1/trix-aarch64-apple-darwin.tar.gz"
      sha256 "59a9c46868d176d2c9326c1a3fd3623aac01c43186dd7061acbc5dd082990825"
    end
    on_intel do
      url "https://github.com/leofle/trix/releases/download/v1.1.1/trix-x86_64-apple-darwin.tar.gz"
      sha256 "358f12be28dfa48e1dfb63fc4cb2116c2916041ce35f32a894e89d1ad1e74e32"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/leofle/trix/releases/download/v1.1.1/trix-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "d77108cc2a5583bc7afee090c645dcff9e08f45ea0fba828485ab64d2d244f0f"
    end
    on_intel do
      url "https://github.com/leofle/trix/releases/download/v1.1.1/trix-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ed8948921c69d23b6844e8db78ba835a3a105b42959780cc37d767e4664399fd"
    end
  end

  def install
    bin.install "trix"
  end

  test do
    assert_match "trix #{version}", shell_output("#{bin}/trix --version")
  end
end
