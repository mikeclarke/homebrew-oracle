require "formula"

class Sqlplus < Formula
  homepage "http://www.oracle.com/technetwork/topics/intel-macsoft-096467.html"
  url "https://mclarke-files.s3.amazonaws.com/oracle/instantclient-sqlplus-macos.x64-11.2.0.4.0.zip"
  sha256 "127d2baaa4c72d8591af829f00dea5e2a77c0e272ce8fc091dd853e9406845b9"

  depends_on 'oracle-client'

  def install
    lib.install 'libsqlplus.dylib', 'libsqlplusic.dylib'
    bin.install 'sqlplus'
  end
end
