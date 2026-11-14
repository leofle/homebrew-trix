# Written by trix's release workflow (packaging/homebrew-formula.sh in
# leofle/trix). Edits here are replaced at the next release.
class Trix < Formula
  desc "Terminal workspace where coding agents live"
  homepage "https://github.com/leofle/trix"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/leofle/trix/releases/download/v1.0.4/trix-aarch64-apple-darwin.tar.gz"
      sha256 "869887d72ac8e97d357d080974c31f43e130f0c65a2c04ec43be0472c60bac67"
    end
    on_intel do
      url "https://github.com/leofle/trix/releases/download/v1.0.4/trix-x86_64-apple-darwin.tar.gz"
      sha256 "225b0dfe0a6ca9bebe1dd4b249b7da4c605edb66b6106e1195e15a4d275a8930"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/leofle/trix/releases/download/v1.0.4/trix-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "ccc519156a7ae6a91ce71acf46c10abb9e584ed0c697ceabce20cb3b2bb5e0d9"
    end
    on_intel do
      url "https://github.com/leofle/trix/releases/download/v1.0.4/trix-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "992dcd4dc03ce8bf6717ff857bcc4463a6c464a7d2b111864aec915bac68e592"
    end
  end

  def install
    bin.install "trix"
  end

  test do
    assert_match "trix #{version}", shell_output("#{bin}/trix --version")
  end
end
