# Written by trix's release workflow (packaging/homebrew-formula.sh in
# leofle/trix). Edits here are replaced at the next release.
class Trix < Formula
  desc "Terminal workspace where coding agents live"
  homepage "https://github.com/leofle/trix"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/leofle/trix/releases/download/v1.0.10/trix-aarch64-apple-darwin.tar.gz"
      sha256 "fbf56dcd5ab72f9c7c5303c2036e060a3d8bcf647714d8b8a785e934027bb38d"
    end
    on_intel do
      url "https://github.com/leofle/trix/releases/download/v1.0.10/trix-x86_64-apple-darwin.tar.gz"
      sha256 "3844804f29ce5e125e79f8e0dc4199229db97c709b00efdc85c51baa74ede165"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/leofle/trix/releases/download/v1.0.10/trix-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "92ddf0d922ceeb682c936ac2885c5b07d6a1cca87e74bf0dd7ce5784955e3a9e"
    end
    on_intel do
      url "https://github.com/leofle/trix/releases/download/v1.0.10/trix-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "95a7e71ef48e66cbcf4dfcb55c8e1575a1fbc60bb18bd59b6244ac992286d2ed"
    end
  end

  def install
    bin.install "trix"
  end

  test do
    assert_match "trix #{version}", shell_output("#{bin}/trix --version")
  end
end
