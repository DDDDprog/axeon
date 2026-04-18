![Axeon Logo](logo.svg)

# Axeon Programming Language

A modern compiled language mixing TypeScript and Rust syntax, built with Rust and LLVM.

<p align="center">
  <br/>
  <img src="https://img.shields.io/badge/version-0.1.0-blue" alt="version"/>
  <img src="https://img.shields.io/badge/license-MIT-green" alt="license"/>
  <img src="https://img.shields.io/badge/platform-x86_64%20%7C%20ARM%20%7C%20RISC--V-orange" alt="platforms"/>
</p>

## Features

- **Modern Syntax**: `fn`, `let`, `mut`, `class`, `->` return types
- **Type Safety**: Strong typing with type inference
- **LLVM Backend**: High-performance compilation
- **Zero Dependencies**: Self-contained compiler
- **Cross-Platform**: x86_64, ARM64, RISC-V

## Quick Start

```bash
# Build
cargo build --release

# Run
./target/release/axeon program.axe -o output
./output
```

## Example

```axeon
fn add(a: int, b: int) -> int {
    let result = a + b;
    return result;
}

fn main() -> int {
    let x = 10;
    let y = 20;
    let z = add(x, y);
    printf("Result: %d\n", z);
    return 0;
}
```

## Syntax Reference

| Feature | Syntax |
|---------|--------|
| Function | `fn name(params) -> ret_type { body }` |
| Variable | `let x = value;` |
| Mutable | `let mut x = value;` |
| Type | `name: Type` |
| Return | `-> Type` |

## Building

```bash
# All platforms (Linux)
./scripts/build-all.sh

# Linux
./scripts/build-linux.sh

# macOS
./scripts/build-macos.sh

# Windows
./scripts/build-windows.sh
```

## Project Structure

```
axeon/
├── src/            # Compiler source
│   ├── frontend/   # Lexer + Parser
│   ├── ir/         # Intermediate representation
│   ├── passes/     # Optimizations
│   └── backend/    # Code generation
├── include/        # Standard headers
├── scripts/        # Build scripts
└── .github/        # CI/CD
```

## License

MIT
