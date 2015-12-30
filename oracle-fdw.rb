class OracleFdw < Formula
  desc "Oracle FDW Postgres Extension"
  homepage "http://laurenz.github.io/oracle_fdw/"
  url "http://api.pgxn.org/dist/oracle_fdw/1.3.0/oracle_fdw-1.3.0.zip"
  sha256 "15dcc6ec960f8eaed24036eb2fec902fe8a257e415e2aa127e679149b732af1c"

  depends_on "oracle-client"
  depends_on "oracle-headers"

  def install
    pg_config = "/Applications/Postgres.app/Contents/Versions/9.4/bin/pg_config"
    system "make", "PG_CONFIG=#{pg_config}"
    system "make", "PG_CONFIG=#{pg_config}", "install"
  end
end
