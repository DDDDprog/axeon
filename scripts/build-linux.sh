#!/bin/bash
# Build Axeon for Linux (default)

set -e

echo "Building Axeon for Linux..."

TARGET=${1:-x86_64-unknown-linux-gnu}

# Add target if not installed
if ! rustup target list --installed | grep -q "^${TARGET}$"; then
    rustup target add "$TARGET"
fi

# Build
cargo build --release --bin axeon --target "$TARGET"

# Output name
NAME="axeon-linux-$(echo $TARGET | sed 's/x86_64/x86_64/; s/aarch64/arm64/')"
EXT=""
[[ "$TARGET" == *"windows"* ]] && EXT=".exe"

cp target/$TARGET/release/axeon$EXT ./"$NAME$EXT"

echo "Built: $NAME$EXT"