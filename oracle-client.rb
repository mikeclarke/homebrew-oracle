require "formula"

class OracleClient < Formula
  homepage "http://www.oracle.com/technetwork/topics/intel-macsoft-096467.html"
  url "https://mclarke-files.s3.amazonaws.com/oracle/instantclient-basic-macos.x64-11.2.0.4.0.zip"
  sha256 "6c079713ab0a65193f7bfcbad6c90e7806fa6634a3828052f8428e1533bb89d3"

  def install
    ln_s "libclntsh.dylib.11.1", "libclntsh.dylib"
    ln_s "libocci.dylib.11.1", "libocci.dylib"
    lib.install Dir['lib*']
  end
end
