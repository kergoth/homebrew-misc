class BmapTools < Formula
  include Language::Python::Virtualenv

  desc "Bmaptool is a generic tool for working with block maps"
  homepage "https://github.com/intel/bmap-tools"
  url "https://github.com/intel/bmap-tools/archive/refs/tags/v3.6.tar.gz"
  sha256 "0658afb972e7221aa16fece3f84e29e5102e901c929253d7fb6040bde28243f7"
  license "GPL-2.0-only"

  depends_on "python"
  depends_on "six"

  def install
    # ENV.deparallelize  # if your formula fails when building in parallel
    virtualenv_install_with_resources
  end

  test do
    # `test do` will create, run in and delete a temporary directory.
    #
    # This test will fail and we won't accept that! For Homebrew/homebrew-core
    # this will need to be a test that verifies the functionality of the
    # software. Run the test with `brew test bmap-tools`. Options passed
    # to `brew install` such as `--HEAD` also need to be provided to `brew test`.
    #
    # The installed folder is not in the path, so use the entire path to any
    # executables being tested: `system "#{bin}/program", "do", "something"`.
    system "false"
  end
end
