# Written by trix's release workflow (packaging/homebrew-formula.sh in
# leofle/trix). Edits here are replaced at the next release.
class Trix < Formula
  desc "Terminal workspace where coding agents live"
  homepage "https://github.com/leofle/trix"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/leofle/trix/releases/download/v1.0.3/trix-aarch64-apple-darwin.tar.gz"
      sha256 "1b604ab8deeb7d087a7fff2bd722362d68368f69617ec91bade948b1a95856de"
    end
    on_intel do
      url "https://github.com/leofle/trix/releases/download/v1.0.3/trix-x86_64-apple-darwin.tar.gz"
      sha256 "16e1c36c9d9f2193a7731f7ffda763edd3b0e1668423c6544406897bd60aa8fc"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/leofle/trix/releases/download/v1.0.3/trix-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e5c962447b6e80bd30c413a971df583e6b8fffc7b95abcc01d6d4c857c435e05"
    end
    on_intel do
      url "https://github.com/leofle/trix/releases/download/v1.0.3/trix-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "574ae067b67cca0f443da40602c73f704dccfb76d4e124bc635668170fcb0c0a"
    end
  end

  def install
    bin.install "trix"
  end

  test do
    assert_match "trix #{version}", shell_output("#{bin}/trix --version")
  end
end
