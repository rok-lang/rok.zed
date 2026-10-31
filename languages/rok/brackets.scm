("(" @open
  ")" @close)

("[" @open
  "]" @close)

("{" @open
  "}" @close)

("<" @open
  ">" @close)

(attribute_item
  "#[" @open
  "]" @close)

(inner_attribute_item
  "#![" @open
  "]" @close)

(closure_parameters
  "|" @open
  "|" @close)

(("\"" @open
  "\"" @close)
  (#set! rainbow.exclude))

((string_literal
  "\"" @open
  "\"" @close)
  (#set! rainbow.exclude))

((byte_string_literal
  "b\"" @open
  "\"" @close)
  (#set! rainbow.exclude))

((format_string
  "f\"" @open
  "\"" @close)
  (#set! rainbow.exclude))

((format_string
  "f\"\"\"" @open
  "\"\"\"" @close)
  (#set! rainbow.exclude))
