# Written by trix's release workflow (packaging/homebrew-formula.sh in
# leofle/trix). Edits here are replaced at the next release.
class Trix < Formula
  desc "Terminal workspace where coding agents live"
  homepage "https://github.com/leofle/trix"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/leofle/trix/releases/download/v1.3.0/trix-aarch64-apple-darwin.tar.gz"
      sha256 "f301f7ae674fd1543453d8d1d34d13c78a2f43c13328a5cbb5162be2b43f4881"
    end
    on_intel do
      url "https://github.com/leofle/trix/releases/download/v1.3.0/trix-x86_64-apple-darwin.tar.gz"
      sha256 "4d8ede2aedddf4cb72bcad338fe4edb8f6a315220d1253a04326f32be4c1fe06"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/leofle/trix/releases/download/v1.3.0/trix-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5e1bedd9e5490c9d82487776a4da1bd7c8739bdbe6ca38b1efde12752f9564ec"
    end
    on_intel do
      url "https://github.com/leofle/trix/releases/download/v1.3.0/trix-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "7cab3a299087a12d94a1914603ef54d85dc1b1073a3242fae5eb1821209e431e"
    end
  end

  def install
    bin.install "trix"
  end

  test do
    assert_match "trix #{version}", shell_output("#{bin}/trix --version")
  end
end
