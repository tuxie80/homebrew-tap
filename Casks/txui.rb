cask "txui" do
  version "1.2.0"
  sha256 "eb4eadc54e47e41ad53ac1a9db0556fccb2428d0796263d1d7a9d1fea43fc149"

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
