# Written by trix's release workflow (packaging/homebrew-formula.sh in
# leofle/trix). Edits here are replaced at the next release.
class Trix < Formula
  desc "Terminal workspace where coding agents live"
  homepage "https://github.com/leofle/trix"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/leofle/trix/releases/download/v1.3.3/trix-aarch64-apple-darwin.tar.gz"
      sha256 "7b3239ef21afea3d96c6a77aa3808daa614d124beabc504c88574668e85699cc"
    end
    on_intel do
      url "https://github.com/leofle/trix/releases/download/v1.3.3/trix-x86_64-apple-darwin.tar.gz"
      sha256 "e16b37f4cc74699a73fe71cfd3226ec635290977e409772e853c0c387721a115"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/leofle/trix/releases/download/v1.3.3/trix-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "889a0c31bd9c68047481573acbfce6df6794b52264bf56cf46afbedb980000e6"
    end
    on_intel do
      url "https://github.com/leofle/trix/releases/download/v1.3.3/trix-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "d8d547ef0524832107d392a9c805e3c74fe8012b43e8cfdc4357df89e489e55f"
    end
  end

  def install
    bin.install "trix"
  end

  test do
    assert_match "trix #{version}", shell_output("#{bin}/trix --version")
  end
end
