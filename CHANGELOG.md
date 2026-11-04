# Changelog

## 0.2.0

For Rok 0.2. Rok 0.1 is no longer supported.

- Grammars and queries from rok-syntax 740423a, for the Rok 0.2 syntax:
  `in` / `!in`, `using x = e;`, pattern parameters, `some Tr`, `**`,
  `.=` and `.op=`, `.??`, multi-axis indexing, `move` in closure
  capture lists, `return@each`.
- Reserved keywords `macro`, `defer`, `dyn`, `move`, `gen` and `do`.

## 0.1.0

First release.

- Rok (`.rok`) and ROKON (`.rokon`, `rok.lock`) languages on the
  rok-syntax tree-sitter grammars: highlighting, brackets, indentation,
  outline, text objects, comment toggling.
- `rokls` language server from `PATH`, or `lsp.rokls.binary` in settings.
