"struct" @keyword
"return" @keyword
"case" @keyword
"const" @keyword
"extern" @keyword
"for" @keyword
"break" @keyword
"class" @keyword
"continue" @keyword
"if" @keyword
"in" @keyword
"inline" @keyword
"inout" @keyword
"out" @keyword
"while" @keyword
"uniform" @keyword
"namespace" @keyword
"switch" @keyword
"typedef" @keyword

"(" @punctuation.bracket
")" @punctuation.bracket
"[" @punctuation.bracket
"]" @punctuation.bracket
"{" @punctuation.bracket
"}" @punctuation.bracket

(comment) @comment
(type_identifier) @type
(primitive_type) @type
(identifier) @variable

; ((identifier) @variable (#eq? @variable "pass")) @keyword

(true) @boolean
(false) @boolean
(number_literal) @number
(string_literal) @string


(field_expression
    field: (field_identifier) @property)

(call_expression
    function: (field_expression
        field: (field_identifier) @function
    )
)
(call_expression
    function: (identifier) @function
    )
(function_definition
    declarator: (
        function_declarator
            declarator: (identifier) @function
    )
)

(bitfield_clause (identifier) @type)
(semantics (identifier) @type)
