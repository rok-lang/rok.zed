<img src="https://raw.githubusercontent.com/rok-lang/web/main/assets/rok-transparent-512.png" alt="Rok" width="96">

# Rok for Zed

Rok language support for [Zed](https://zed.dev): tree-sitter highlighting
for `.rok` and `.rokon`, and the Rok language server `rokls`.

## Features

- Highlighting, bracket matching, auto-indent, outline, Vim text objects
  and comment toggling, from the
  [rok-syntax](https://github.com/rok-lang/rok-syntax) tree-sitter grammars.
- ROKON for `.rokon` files and `rok.lock`.
- From `rokls`, over LSP:
  - diagnostics
  - hover
  - completion
  - go to definition
  - find references
  - rename
  - document symbols
  - formatting
  - semantic highlighting
  - signature help
  - quick fixes, including `rok add` for a missing stone

## Install

The extension is not in the Zed extension registry yet. Until it is,
install it as a dev extension:

1. Install Rust with [rustup](https://rustup.rs); Zed builds the
   extension with it.
2. Clone this repository.
3. In Zed, run `zed: install dev extension` from the command palette (or
   **Install Dev Extension** in the Extensions page) and pick the
   checkout.

Zed fetches and builds the grammars at the commit in `extension.toml`.

## Language server

Install Rok 0.2 or later so `rokls` is on your `PATH`; Rok 0.1 is no
longer supported.

Linux and macOS:

```sh
curl -fsSL https://rok-lang.org/install.sh | sh
```

Windows (PowerShell):

```powershell
powershell -ExecutionPolicy Bypass -c "irm https://rok-lang.org/install.ps1 | iex"
```

More at <https://rok-lang.org/download>. The extension finds `rokls` on
the `PATH` of your login shell and never downloads it. Without `rokls`
you still get highlighting.

## Settings

In Zed's `settings.json`:

```json
{
  "lsp": {
    "rokls": {
      "binary": {
        "path": "/path/to/rokls",
        "arguments": [],
        "env": {}
      }
    }
  },
  "languages": {
    "Rok": {
      "semantic_tokens": "combined"
    }
  }
}
```

| Setting                         | Description                                                  |
| ------------------------------- | ------------------------------------------------------------ |
| `lsp.rokls.binary.path`         | Path to `rokls`, if it is not on `PATH`.                     |
| `lsp.rokls.binary.arguments`    | Arguments for `rokls`. Default: none.                        |
| `lsp.rokls.binary.env`          | Extra environment for `rokls`.                               |
| `languages.Rok.semantic_tokens` | `"combined"` layers `rokls` semantic tokens on tree-sitter.  |

To turn the language server off:

```json
{
  "languages": {
    "Rok": { "language_servers": ["!rokls", "..."] }
  }
}
```

## Grammars

`extension.toml` pins the `rok` and `rokon` grammars to the rok-syntax
commit in `rok-syntax.rev`. `highlights.scm` and `injections.scm` in
`languages/` are generated from rok-syntax's queries with Zed's capture
names; the other queries are Zed's own. Change the grammar and its
queries in rok-syntax, then sync:

```sh
scripts/sync --from ../rok-syntax   # copy from a checkout, pin its HEAD
scripts/sync                        # fetch at the pinned commit
scripts/sync --check                # what CI runs
```

More in [CONTRIBUTING.md](CONTRIBUTING.md).

## License

Licensed under either of [MIT](LICENSE-MIT) or
[Apache-2.0](LICENSE-APACHE), at your option.
