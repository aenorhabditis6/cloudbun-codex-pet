#!/usr/bin/env bash
set -euo pipefail

PROJECT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")/.." && pwd)"
SOURCE_DIR="$PROJECT_DIR/cloudbun"
TARGET_DIR="${CODEX_HOME:-$HOME/.codex}/pets/cloudbun"

mkdir -p "$TARGET_DIR"
cp "$SOURCE_DIR/pet.json" "$TARGET_DIR/pet.json"
cp "$SOURCE_DIR/spritesheet.webp" "$TARGET_DIR/spritesheet.webp"

echo "Installed Cloudbun to $TARGET_DIR"
echo "Restart Codex, then select Cloudbun from the pet/customization menu."

