# Written by trix's release workflow (packaging/homebrew-formula.sh in
# leofle/trix). Edits here are replaced at the next release.
class Trix < Formula
  desc "Terminal workspace where coding agents live"
  homepage "https://github.com/leofle/trix"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/leofle/trix/releases/download/v1.5.0/trix-aarch64-apple-darwin.tar.gz"
      sha256 "8d5eda8bb981e680497dc798882b9158248b3644cf4bd527382f461b9a911e58"
    end
    on_intel do
      url "https://github.com/leofle/trix/releases/download/v1.5.0/trix-x86_64-apple-darwin.tar.gz"
      sha256 "be468e59786590f8ab7ef10b3b691a4ee1a224ba92cd06524ba807f2d3f4f8c5"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/leofle/trix/releases/download/v1.5.0/trix-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e47ed0bf58ad92023380b7092f2a27e236fb6e4684fbc643571ce5a845d5701f"
    end
    on_intel do
      url "https://github.com/leofle/trix/releases/download/v1.5.0/trix-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ff9b08d85cf41465385193023b3f593c794cf732c452d04a9dc88fc233b995b5"
    end
  end

  def install
    bin.install "trix"
  end

  test do
    assert_match "trix #{version}", shell_output("#{bin}/trix --version")
  end
end
