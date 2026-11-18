# Written by trix's release workflow (packaging/homebrew-formula.sh in
# leofle/trix). Edits here are replaced at the next release.
class Trix < Formula
  desc "Terminal workspace where coding agents live"
  homepage "https://github.com/leofle/trix"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/leofle/trix/releases/download/v1.4.0/trix-aarch64-apple-darwin.tar.gz"
      sha256 "d4c850a8a91c267607e15f0c477fdbc1b28ce0e23ab78682b7c530b5a2e13ca9"
    end
    on_intel do
      url "https://github.com/leofle/trix/releases/download/v1.4.0/trix-x86_64-apple-darwin.tar.gz"
      sha256 "2b14d8b9998b99c5a870062fc062e59eed0ce19552ef52a4628ac09cd70e8277"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/leofle/trix/releases/download/v1.4.0/trix-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "37f4b4f2170741a345e7e5d2e71aed1562a8d92e559e1035f3de52c07a32d4e9"
    end
    on_intel do
      url "https://github.com/leofle/trix/releases/download/v1.4.0/trix-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "58795dc242340667271b150456ab61771add7b6f4cdcd52009236a16a1934a67"
    end
  end

  def install
    bin.install "trix"
  end

  test do
    assert_match "trix #{version}", shell_output("#{bin}/trix --version")
  end
end
