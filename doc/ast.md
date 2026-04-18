# Axeon AST Changes

## FunctionDef Updates

```rust
pub struct FunctionDef {
    pub return_type: Option<TypeSpecifier>,  // Option for modern syntax
    pub name: String,
    pub params: Vec<ParamDecl>,
    pub variadic: bool,
    pub body: CompoundStmt,
    pub attrs: FunctionAttributes,
    pub is_modern: bool,  // New: marks modern syntax
    pub is_kr: bool,
    pub span: Span,
}
```

## Declaration Changes

`return_type` changed to `Option<TypeSpecifier>`:
- `Some(ts)` - Modern syntax with explicit return type: `-> int`
- `None` - No return type specified (defaults to int internally)

## is_modern Flag

When `is_modern: true`:
- Function parsed with `fn` keyword
- Uses modern parameter syntax (`name: Type`)
- Return type specified with `-> Type`
