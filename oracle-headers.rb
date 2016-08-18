require "formula"

class OracleHeaders < Formula
  homepage "http://www.oracle.com/technetwork/topics/intel-macsoft-096467.html"
  url "https://mclarke-files.s3.amazonaws.com/oracle/instantclient-sdk-macos.x64-11.2.0.4.0.zip"
  sha256 "aead0663c206a811cf1f61d3b2a533ff81e6e6109dd31544ad850a7ef6eb5d19"

  def install
    include.install Dir['sdk/**/include/*']
  end
end
