#!/bin/bash
# Build Axeon for Linux (all architectures)
# Usage: ./scripts/build-all.sh

set -e

echo "Building Axeon for Linux..."

# x86_64
echo ">>> Linux x86_64..."
cargo build --release --bin axeon --target x86_64-unknown-linux-gnu
cp target/x86_64-unknown-linux-gnu/release/axeon ./axeon-linux-x86_64

# ARM64
echo ">>> Linux arm64..."
if ! rustup target list --installed | grep -q aarch64-unknown-linux-gnu; then
    rustup target add aarch64-unknown-linux-gnu
fi
cargo build --release --bin axeon --target aarch64-unknown-linux-gnu
cp target/aarch64-unknown-linux-gnu/release/axeon ./axeon-linux-arm64

echo "Done!"
ls -la axeon-linux-*