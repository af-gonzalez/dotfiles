; extends

(call_expression
  (member_expression
    object: (identifier) @object (#eq? @object "sql")
  )
  (template_string) @injection.content 
    (#set! injection.language "sql")
    (#set! injection.include-children)
)

(call_expression
  (member_expression
    object: (identifier) @id (#eq? @id "queryRunner")
    property: (property_identifier) @propId (#eq? @propId "query")
  )
  (arguments
    (template_string
      (string_fragment) @injection.content
        (#set! injection.language "sql")
        (#set! injection.include-children)
    )
  )
)

(call_expression
  (member_expression
    object: (identifier) @object (#eq? @object "sql")
  )
  (template_string
    [
      (string_fragment)
      (template_substitution)
    ] @injection.content 
      (#set! injection.language "sql")
      (#set! injection.include-children)
  ) 
)

(call_expression
  (call_expression
    (member_expression
      object: (identifier) @id (#eq? @id "sql")
    )
  )
  (template_string
    [
      (string_fragment)
      (template_substitution)
    ] @injection.content 
      (#set! injection.language "sql")
      (#set! injection.include-children)
  ) 
)

(call_expression
  (call_expression
    (member_expression
      object: (identifier) @id (#eq? @id "sql")
    )
  )
  (template_string) @injection.content 
    (#set! injection.language "sql")
    (#set! injection.include-children)
)
