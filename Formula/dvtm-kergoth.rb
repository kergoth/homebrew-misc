class DvtmKergoth < Formula
  desc "Dynamic Virtual Terminal Manager - kergoth's fork"
  homepage "http://www.brain-dump.org/projects/dvtm/"
  head "https://github.com/kergoth/dvtm.git", :branch => "kergoth"

  # https://github.com/martanne/dvtm/issues/19
  # depends_on MaximumMacOSRequirement => :yosemite

  def install
    ENV.append_to_cflags "-D_DARWIN_C_SOURCE"
    system "make", "PREFIX=#{prefix}", "LIBS=-lc -lutil -lncurses", "install"
  end

  test do
    result = shell_output("#{bin}/dvtm -v")
    result.force_encoding("UTF-8") if result.respond_to?(:force_encoding)
    assert_match(/^dvtm-#{version}/, result)
  end
end
