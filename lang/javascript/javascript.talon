tag: user.javascript
-
tag(): user.code_imperative
tag(): user.code_object_oriented

tag(): user.code_comment_line
tag(): user.code_comment_block_c_like
tag(): user.code_data_bool
tag(): user.code_data_null
tag(): user.code_functions
tag(): user.code_functions_gui
tag(): user.code_libraries
tag(): user.code_operators_array
tag(): user.code_operators_assignment
tag(): user.code_operators_bitwise
tag(): user.code_operators_lambda
tag(): user.code_operators_math
tag(): user.react

settings():
    user.code_private_function_formatter = "PRIVATE_CAMEL_CASE"
    user.code_protected_function_formatter = "PRIVATE_CAMEL_CASE"
    user.code_public_function_formatter = "PRIVATE_CAMEL_CASE"
    user.code_private_variable_formatter = "PRIVATE_CAMEL_CASE"
    user.code_protected_variable_formatter = "PRIVATE_CAMEL_CASE"
    user.code_public_variable_formatter = "PRIVATE_CAMEL_CASE"

sure is: " === "
sure isn't: " !== "

async: "async "
await: "await "
const: "const "
export: "export "
let: "let "
var: "var "

spread: "..."
swipe: ", "

complete lamb:
    key(end)
    insert(" => {}")
    key(left)
    key(enter)

from import:
    insert(' from  ""')
    key("left")

print:
    insert("console.log()")
    key(left)

lamb funk <user.text>: user.js_lambda_function(text)

lamb funk <user.text> of <user.text>: user.js_lambda_function_of(text_1, text_2)

med <user.text>: user.js_method(text)

proper <user.text>: user.js_property(text)