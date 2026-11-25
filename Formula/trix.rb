# Written by trix's release workflow (packaging/homebrew-formula.sh in
# leofle/trix). Edits here are replaced at the next release.
class Trix < Formula
  desc "Terminal workspace where coding agents live"
  homepage "https://github.com/leofle/trix"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/leofle/trix/releases/download/v1.7.2/trix-aarch64-apple-darwin.tar.gz"
      sha256 "2be191811a168b7bed9fb4572700fc2a51b0f308da3265f52ca47bb049dc1daa"
    end
    on_intel do
      url "https://github.com/leofle/trix/releases/download/v1.7.2/trix-x86_64-apple-darwin.tar.gz"
      sha256 "89a6a9dda9f09cbbbb23ca5213dd51f6a211fc0c04b559c8e3dd7c49689914ce"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/leofle/trix/releases/download/v1.7.2/trix-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "30c93c3f463025bec8210c6a7be4ad9d833294ab97f36d9c70c48a3e43d85244"
    end
    on_intel do
      url "https://github.com/leofle/trix/releases/download/v1.7.2/trix-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "35be5c0094684f7f20c192ff263f4a565dacfd47c79f1753a8517aaec6bc9c44"
    end
  end

  def install
    bin.install "trix"
  end

  test do
    assert_match "trix #{version}", shell_output("#{bin}/trix --version")
  end
end
