# Written by trix's release workflow (packaging/homebrew-formula.sh in
# leofle/trix). Edits here are replaced at the next release.
class Trix < Formula
  desc "Terminal workspace where coding agents live"
  homepage "https://github.com/leofle/trix"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/leofle/trix/releases/download/v1.0.5/trix-aarch64-apple-darwin.tar.gz"
      sha256 "bb278a5073f6c3b00e792c649146705844c1fd935335217951f4a7e316dafba7"
    end
    on_intel do
      url "https://github.com/leofle/trix/releases/download/v1.0.5/trix-x86_64-apple-darwin.tar.gz"
      sha256 "d7309fa496d2de772444a6f0fdd17892a0a02bf32cde195bc5b491e46c241509"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/leofle/trix/releases/download/v1.0.5/trix-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e49f09f1e3ba30a53b8284c2a87e52bb45ce3366e5361f64c1e6ae9a1d46aafb"
    end
    on_intel do
      url "https://github.com/leofle/trix/releases/download/v1.0.5/trix-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "06c9974a17461f31bc982baf8acf0dee840d3ac95f6fbe071b0a1eb8841723ba"
    end
  end

  def install
    bin.install "trix"
  end

  test do
    assert_match "trix #{version}", shell_output("#{bin}/trix --version")
  end
end
