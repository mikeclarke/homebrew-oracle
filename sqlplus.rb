require "formula"

class Sqlplus < Formula
  homepage "http://www.oracle.com/technetwork/topics/intel-macsoft-096467.html"
  url "https://s3.amazonaws.com/mclarke-files/oracle/instantclient-sqlplus-macos.x64-11.2.0.4.0.zip"
  sha1 "0ee3385f508d03136f8131672f38b636f0f9f274"

  depends_on 'oracle-client'

  def install
    lib.install 'libsqlplus.dylib', 'libsqlplusic.dylib'
    bin.install 'sqlplus'
  end
end
