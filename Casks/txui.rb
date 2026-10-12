cask "txui" do
  version "1.1.0"
  sha256 "308249d90b83d5dd4dc7dc8589c1a8b81b4fc8f0f078db4ab12ea02e5e8334aa"

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
