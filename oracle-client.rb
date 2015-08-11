require "formula"

class OracleClient < Formula
  homepage "http://www.oracle.com/technetwork/topics/intel-macsoft-096467.html"
  url "https://s3.amazonaws.com/mclarke-files/oracle/instantclient-basic-macos.x64-11.2.0.4.0.zip"
  sha1 "d9b5a1d13ecf2fca0317fc7b4964576a95990f08"

  def install
    ln_s "libclntsh.dylib.11.1", "libclntsh.dylib"
    ln_s "libocci.dylib.11.1", "libocci.dylib"
    lib.install Dir['lib*']
  end
end
