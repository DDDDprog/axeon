#!/bin/bash
# Build Axeon for macOS
# Run on macOS

set -e

echo "Building Axeon for macOS..."

# Check we're on macOS
if [[ "$(uname)" != "Darwin" ]]; then
    echo "Warning: Not running on macOS. Build may fail."
fi

# Build for x86_64
cargo build --release --bin axeon --target x86_64-apple-darwin

# Rename output
cp target/x86_64-apple-darwin/release/axeon ./axeon-macos-x64

# Build for ARM64 if on Mac with Apple Silicon
if [[ "$(uname -m)" == "arm64" ]]; then
    cargo build --release --bin axeon --target aarch64-apple-darwin
    cp target/aarch64-apple-darwin/release/axeon ./axeon-macos-arm64
    echo "Built: axeon-macos-x64, axeon-macos-arm64"
else
    echo "Built: axeon-macos-x64 (x86_64)"
fi