# Written by trix's release workflow (packaging/homebrew-formula.sh in
# leofle/trix). Edits here are replaced at the next release.
class Trix < Formula
  desc "Terminal workspace where coding agents live"
  homepage "https://github.com/leofle/trix"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/leofle/trix/releases/download/v1.0.9/trix-aarch64-apple-darwin.tar.gz"
      sha256 "394a9be8a14fe8845ad9b235133dd4d4786041280965add80818175f317f62cc"
    end
    on_intel do
      url "https://github.com/leofle/trix/releases/download/v1.0.9/trix-x86_64-apple-darwin.tar.gz"
      sha256 "c4b23bac3a48ff37e628c104e02ac09e657fdc0a8ae0598391a565118f268dbd"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/leofle/trix/releases/download/v1.0.9/trix-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "1073caf522a97d7e140ea156744715a444d3a76cbf47b0b5ebe9a8d4495b8f78"
    end
    on_intel do
      url "https://github.com/leofle/trix/releases/download/v1.0.9/trix-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d8856d5003d251c69d9f6179d60a2b2ab4c4f4eaf99e444ece409e59ed079586"
    end
  end

  def install
    bin.install "trix"
  end

  test do
    assert_match "trix #{version}", shell_output("#{bin}/trix --version")
  end
end
