# Axeon Parser Documentation

## Modern Function Syntax

```axeon
fn name(param1: Type, param2: Type) -> return_type {
    // body
}
```

### Parsing Flow

1. `parse_external_decl()` detects `fn` token
2. Calls `parse_modern_function()`
3. Parses function name from identifier
4. Parses parameters: `name: Type, name: Type`
5. Parses optional return type: `-> Type`
6. Parses body: `{ ... }`

## Modern Variable Syntax

```axeon
let x = value;
let mut y = value;
let z: int = value;
```

### Parsing Flow

1. `parse_stmt()` detects `let` token at statement position
2. Calls `parse_modern_let_stmt()`
3. Checks for optional `mut`
4. Parses variable name
5. Skips optional type annotation (`: Type`)
6. Parses value expression
7. Converts to C declaration internally
