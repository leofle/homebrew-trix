# Written by trix's release workflow (packaging/homebrew-formula.sh in
# leofle/trix). Edits here are replaced at the next release.
class Trix < Formula
  desc "Terminal workspace where coding agents live"
  homepage "https://github.com/leofle/trix"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/leofle/trix/releases/download/v1.1.3/trix-aarch64-apple-darwin.tar.gz"
      sha256 "819d9c19d0d2965d89e74b4f5307f17df846ca6221e0228040404b9641a3d306"
    end
    on_intel do
      url "https://github.com/leofle/trix/releases/download/v1.1.3/trix-x86_64-apple-darwin.tar.gz"
      sha256 "0e1d25be0121ff7ea7cab9efaf9cee0285fc06d48f2bad3decf606a917fbc382"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/leofle/trix/releases/download/v1.1.3/trix-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "68bb67a98f40ff7bd37890f1112046d2afe45c9fbecba2a41ca898b9e55ecbf4"
    end
    on_intel do
      url "https://github.com/leofle/trix/releases/download/v1.1.3/trix-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "11385ed3130e2f9126e065726e101f783b9ce557ae5acda7fb2085ee191e15f9"
    end
  end

  def install
    bin.install "trix"
  end

  test do
    assert_match "trix #{version}", shell_output("#{bin}/trix --version")
  end
end
