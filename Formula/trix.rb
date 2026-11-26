# Written by trix's release workflow (packaging/homebrew-formula.sh in
# leofle/trix). Edits here are replaced at the next release.
class Trix < Formula
  desc "Terminal workspace where coding agents live"
  homepage "https://github.com/leofle/trix"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/leofle/trix/releases/download/v1.7.7/trix-aarch64-apple-darwin.tar.gz"
      sha256 "7c946dbd653be510aa962c47eae237a1d17fd6643bd38bb10835a161e435fcc0"
    end
    on_intel do
      url "https://github.com/leofle/trix/releases/download/v1.7.7/trix-x86_64-apple-darwin.tar.gz"
      sha256 "13aae990ce03b7115571ecddd6ee6386e0330e9f949861df2db0d8278284091d"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/leofle/trix/releases/download/v1.7.7/trix-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "05a1c439d6141dad34f8a920dd37c1ec4a96f8be72701f0f0e8df6933ea9ad8a"
    end
    on_intel do
      url "https://github.com/leofle/trix/releases/download/v1.7.7/trix-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "836b9573d465e186d5d4466c2f8b92a5f44d361da383690a2e3863d59d80f7c8"
    end
  end

  def install
    bin.install "trix"
  end

  test do
    assert_match "trix #{version}", shell_output("#{bin}/trix --version")
  end
end
