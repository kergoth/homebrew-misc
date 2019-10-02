class MoshForward < Formula
  desc "Remote terminal application with agent forwarding patch"
  homepage "https://mosh.org"
  head "https://github.com/qmx/mosh.git", :shallow => false, :branch => "agent-forward"
  revision 1

  depends_on "autoconf" => :build
  depends_on "automake" => :build
  depends_on "pkg-config" => :build
  depends_on "tmux" => :build
  depends_on "protobuf"

  def install
    ENV.cxx11

    # teach mosh to locate mosh-client without referring
    # PATH to support launching outside shell e.g. via launcher
    inreplace "scripts/mosh.pl", "'mosh-client", "\'#{bin}/mosh-client"

    system "./autogen.sh" if build.head?
    system "./configure", "--prefix=#{prefix}", "--enable-completion"
    system "make", "check"
    system "make", "install"
  end

  test do
    system bin/"mosh-client", "-c"
  end
end
