# homebrew-tap

Homebrew tap for **TxUI** — a fast, DBA-focused desktop database GUI
(Tauri 2 + Rust + React 19). Website: https://tuxie.eu/txui/ · Source:
https://github.com/tuxie80/txui

## Install

```sh
brew install --cask tuxie80/tap/txui
```

## Update

```sh
brew upgrade --cask tuxie80/tap/txui
```

## Note on signing

TxUI is ad-hoc signed (no Apple Developer certificate yet). If Gatekeeper
blocks the first launch, right-click → Open once, or:

```sh
xattr -dr com.apple.quarantine /Applications/TxUI.app
```

The [curl installer](https://tuxie.eu/txui/install.sh) handles this
automatically.
