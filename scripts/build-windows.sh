#!/bin/bash
# Build Axeon for Windows
# Run on macOS or Linux with MinGW installed

set -e

echo "Building Axeon for Windows..."

# Check for MinGW
if ! command -v x86_64-w64-mingw32-gcc &> /dev/null && ! command -v i686-w64-mingw32-gcc &> /dev/null; then
    echo "Error: MinGW not found. Install with:"
    echo "  macOS: brew install mingw-w64"
    echo "  Linux: sudo apt install mingw-w64"
    exit 1
fi

# Build
cargo build --release --bin axeon --target x86_64-pc-windows-gnu

# Rename output
cp target/x86_64-pc-windows-gnu/release/axeon.exe ./axeon-windows-x64.exe

echo "Built: axeon-windows-x64.exe"