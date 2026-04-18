# Axeon Lexer Documentation

## New Axeon Keywords

The lexer adds 26 new keywords for modern syntax support:

| Token | Keyword | Description |
|-------|---------|-------------|
| `Fn` | `fn` | Function keyword |
| `Let` | `let` | Variable declaration |
| `LetMut` | `mut` | Mutable variable |
| `Class` | `class` | Class (future) |
| `Import` | `import` | Module import |
| `From` | `from` | Import from |
| `Try` | `try` | Error handling |
| `Catch` | `catch` | Error catch |
| `Throw` | `throw` | Throw error |
| `Match` | `match` | Pattern matching |
| `Loop` | `loop` | Infinite loop |
| `True` | `true` | Boolean true |
| `False` | `false` | Boolean false |
| `None` | `none` | Null value |
| `SelfToken` | `self` | Self reference |
| `SelfType` | `Self` | Self type |
| `Super` | `super` | Parent reference |
| `In` | `in` | In operator |
| `And` | `and` | Logical and |
| `Or` | `or` | Logical or |
| `Not` | `not` | Logical not |
| `ReturnArrow` | `->` | Return type arrow |

## Token Changes

- `ReturnArrow` (`->`) - Used for return type instead of `Arrow`
- Parser handles both `LetMut` token and `Identifier("mut")` for compatibility
