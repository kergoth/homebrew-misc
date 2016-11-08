class JsonTable < Formula
  desc "Transform nested JSON data into tabular data in the shell"
  homepage "https://github.com/micha/json-table"
  head "https://github.com/micha/json-table"
  url "https://github.com/micha/json-table.git",
      :tag => "2.0.0",
      :revision => "2cc3ea14697082412b3c86a388705ac316f8dbfb"

  def install
    system "make", "LDFLAGS=", "PREFIX=#{prefix}", "install"
  end

  test do
    system "jt"
  end
end
