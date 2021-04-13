class ErsatzSetsid < Formula
  desc "This is an ersatz setsid command for those Unixes that don't have one"
  homepage "https://github.com/jerrykuch/ersatz-setsid"
  license "MIT"
  head "git://github.com/jerrykuch/ersatz-setsid"

  def install
    system "make"
    bin.install "setsid"
  end

  test do
    system "#{bin}/setsid", true
  end
end
