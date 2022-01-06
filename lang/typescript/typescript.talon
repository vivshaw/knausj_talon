mode: command
and mode: user.typescript
mode: command
and mode: user.auto_lang
and code.language: typescript
-
tag(): user.code_operators
tag(): user.code_comment
tag(): user.code_generic
tag(): user.javascript

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
interface: "interface "
let: "let "
type: "type "
var: "var "

is of: ": "
spread: "..."
swipe: ", "

print:
    insert("console.log()")
    key(left)

lamb funk <user.text>: user.typescript_lambda_function(text)

lamb funk <user.text> of <user.text>: user.typescript_lambda_function_of(text_1, text_2)

med <user.text>: user.typescript_method(text)

proper <user.text>: user.typescript_property(text)

complete:
    key(end)
    insert(" => {}")
    key(left)
    key(enter)


^funky <user.text>$: user.code_default_function(text)
^pro funky <user.text>$: user.code_protected_function(text)
^pub funky <user.text>$: user.code_public_function(text)
