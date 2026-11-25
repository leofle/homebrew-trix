# Written by trix's release workflow (packaging/homebrew-formula.sh in
# leofle/trix). Edits here are replaced at the next release.
class Trix < Formula
  desc "Terminal workspace where coding agents live"
  homepage "https://github.com/leofle/trix"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/leofle/trix/releases/download/v1.7.1/trix-aarch64-apple-darwin.tar.gz"
      sha256 "20fe4b6a6ca1f32fec5a08526e5ca7075833bfacbcd008d893f2a57842640356"
    end
    on_intel do
      url "https://github.com/leofle/trix/releases/download/v1.7.1/trix-x86_64-apple-darwin.tar.gz"
      sha256 "0f3d89fd06b0a4fc36ca03a1973aa9e167b82b5e067319666cc7e3f228de58cb"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/leofle/trix/releases/download/v1.7.1/trix-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "5a2f73b212788a26606d9dd572cbec6f3552ff1f37b8d2922c483802ebb15219"
    end
    on_intel do
      url "https://github.com/leofle/trix/releases/download/v1.7.1/trix-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d5a14c805659b4fe866cb637a985eef9267613025cba7ca08209acb26317287b"
    end
  end

  def install
    bin.install "trix"
  end

  test do
    assert_match "trix #{version}", shell_output("#{bin}/trix --version")
  end
end
