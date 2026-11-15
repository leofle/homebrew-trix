# Written by trix's release workflow (packaging/homebrew-formula.sh in
# leofle/trix). Edits here are replaced at the next release.
class Trix < Formula
  desc "Terminal workspace where coding agents live"
  homepage "https://github.com/leofle/trix"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/leofle/trix/releases/download/v1.1.6/trix-aarch64-apple-darwin.tar.gz"
      sha256 "88d31bc328bd735927532c788afe5c6b889e467532729b179f4b0b1cb6587906"
    end
    on_intel do
      url "https://github.com/leofle/trix/releases/download/v1.1.6/trix-x86_64-apple-darwin.tar.gz"
      sha256 "4cd3d69b53c4a8a1a3e1b2eb64b07a42155d9e28743b921d8aeb04d064d6f3fa"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/leofle/trix/releases/download/v1.1.6/trix-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "6bf78bf1a110f155c0e8808c17349e3ba54ecb9a41d9f4c4c0794a6c82d859d3"
    end
    on_intel do
      url "https://github.com/leofle/trix/releases/download/v1.1.6/trix-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "ad6128db17f037a1d3a347bbb5d29f50e4057a2c30974d6901faf237b6d1fdab"
    end
  end

  def install
    bin.install "trix"
  end

  test do
    assert_match "trix #{version}", shell_output("#{bin}/trix --version")
  end
end
