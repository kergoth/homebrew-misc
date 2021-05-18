class RustyrussellStats < Formula
  desc "Gathers numbers in repeated text"
  homepage "https://github.com/rustyrussell/stats"
  license "GPL-3.0-or-later"
  head "git://github.com/rustyrussell/stats"

  def install
    system "make", "PREFIX=#{prefix}", "install"
  end

  test do
    assert_equal "1.000000-3.000000(2+/-0.82)", shell_output("( echo 1.0; echo 2.0; echo 3.0; ) | #{bin}/stats").strip
  end
end
