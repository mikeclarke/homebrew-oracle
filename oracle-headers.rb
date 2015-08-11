require "formula"

class OracleHeaders < Formula
  homepage "http://www.oracle.com/technetwork/topics/intel-macsoft-096467.html"
  url "https://s3.amazonaws.com/mclarke-files/oracle/instantclient-sdk-macos.x64-11.2.0.4.0.zip"
  sha1 "1c37a37e62d02bad7705d7e417810da7fda9bd0e"

  def install
    include.install Dir['sdk/**/include/*']
  end
end
