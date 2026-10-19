cask "txui" do
  version "1.4.1"
  sha256 "0c2305646c1a961c8947e89d0f15844e317046517ec93b98c68812c2fac9d491"

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
