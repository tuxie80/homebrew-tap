cask "txui" do
  version "1.4.2"
  sha256 "eaebc16ff570686efe54ec3c5eaf372f64286090f208d1e611327c798c703407"

  url "https://github.com/tuxie80/txui/releases/download/v#{version}/TxUI_#{version}_universal.dmg"
  name "TxUI"
  desc "Fast, DBA-focused desktop database GUI — MySQL/MariaDB/Percona, PostgreSQL, SQL Server, ClickHouse, Redis, SQLite, DuckDB, Parquet, MongoDB"
  homepage "https://tuxie.eu/txui/"

  app "TxUI.app"

  caveats <<~EOS
    TxUI is ad-hoc signed (no Apple Developer certificate yet). If Gatekeeper
    blocks the first launch: right-click → Open once, or run
      xattr -dr com.apple.quarantine /Applications/TxUI.app
    The curl installer on the homepage does this for you automatically.
  EOS
end
