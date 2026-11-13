# Written by trix's release workflow (packaging/homebrew-formula.sh in
# leofle/trix). Edits here are replaced at the next release.
class Trix < Formula
  desc "Terminal workspace where coding agents live"
  homepage "https://github.com/leofle/trix"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/leofle/trix/releases/download/v1.0.0/trix-aarch64-apple-darwin.tar.gz"
      sha256 "571e77ff4dfc264efeeacae443a7a15a5acb198557134d123534d50c30ff1909"
    end
    on_intel do
      url "https://github.com/leofle/trix/releases/download/v1.0.0/trix-x86_64-apple-darwin.tar.gz"
      sha256 "5aaa0c67c40d8db52b61fcef991d2fc41a9e869423b0b4c300a593fcf6d2a723"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/leofle/trix/releases/download/v1.0.0/trix-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "233df24d5145d174a1ae1fe8145121751343ed31388303346bae9a00bb43a252"
    end
    on_intel do
      url "https://github.com/leofle/trix/releases/download/v1.0.0/trix-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "bba2054c8a2b2b950034d7cb9315da7e2a8d69ff1d740d496ca418f280e8d55c"
    end
  end

  def install
    bin.install "trix"
  end

  test do
    assert_match "trix #{version}", shell_output("#{bin}/trix --version")
  end
end
