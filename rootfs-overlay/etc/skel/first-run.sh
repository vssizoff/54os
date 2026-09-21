#!/usr/bin/env bash
set -euo pipefail

EXT_DIR="/opt/vscode-extensions"
CODE_BIN="code"

for vsix in "$EXT_DIR"/*.vsix; do
  [ -e "$vsix" ] || continue
  "$CODE_BIN" --install-extension "$vsix"
done

bash "$HOME/.jetbra/scripts/install.sh"

rm "$HOME/first-run.sh"
qdbus org.kde.Shutdown /Shutdown logout
