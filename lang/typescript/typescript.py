from talon import Module, Context, actions, ui, imgui, settings

mod = Module()

ctx = Context()
ctx.matches = r"""
mode: user.typescript
mode: user.auto_lang
and code.language: typescript
"""
# tbd
# ctx.lists["user.code_functions"] = {
#     "integer": "int.TryParse",
#     "print": "Console.WriteLine",
#     "string": ".ToString",
# }

ctx.lists["user.code_type"] = {
    "boolean": "boolean",
    "integer": "int",
    "string": "string",
    "null": "null",
    "undefined": "undefined",
    "number": "number",
    "any": "any",
}

@mod.action_class
class Actions:
    # Unique actions for TypeScript

    def typescript_lambda_function(text: str):
        """Formats a lambda function"""
        actions.auto_insert("const ")
        actions.insert(actions.user.formatted_text(text, "PRIVATE_CAMEL_CASE"))
        actions.auto_insert(" = () => {}")
        actions.key("left")
        actions.key("enter")

    def typescript_lambda_function_of(text: str, text2: str):
        """Formats a lambda function"""
        actions.auto_insert("const ")
        actions.insert(actions.user.formatted_text(text, "PRIVATE_CAMEL_CASE"))
        actions.auto_insert(" = ()")
        actions.key("left")
        actions.insert(actions.user.formatted_text(text2, "PRIVATE_CAMEL_CASE"))

    def typescript_method(text: str):
        """Formats a method"""
        actions.auto_insert(".")
        actions.insert(actions.user.formatted_text(text, "PRIVATE_CAMEL_CASE"))
        actions.auto_insert("()")
        actions.key("left")

    def typescript_property(text: str):
        """Formats a property"""
        actions.auto_insert(".")
        actions.insert(actions.user.formatted_text(text, "PRIVATE_CAMEL_CASE"))


@ctx.action_class("user")
class UserActions:
    def code_private_function(text: str):
        """Inserts private function declaration"""
        result = "private function {}".format(
            actions.user.formatted_text(
                text, settings.get("user.code_private_function_formatter")
            )
        )

        actions.user.code_insert_function(result, None)

    # def code_private_static_function(text: str):
    #     """Inserts private static function"""
    #     result = "private static void {}".format(
    #         actions.user.formatted_text(
    #             text, settings.get("user.code_private_function_formatter")
    #         )
    #     )

    #     actions.user.code_insert_function(result, None)

    def code_protected_function(text: str):
        result = "protected function {}".format(
            actions.user.formatted_text(
                text, settings.get("user.code_protected_function_formatter")
            )
        )

        actions.user.code_insert_function(result, None)

    # def code_protected_static_function(text: str):
    #     result = "protected static void {}".format(
    #         actions.user.formatted_text(
    #             text, settings.get("user.code_protected_function_formatter")
    #         )
    #     )

    #     actions.user.code_insert_function(result, None)

    def code_public_function(text: str):
        result = "public function {}".format(
            actions.user.formatted_text(
                text, settings.get("user.code_public_function_formatter")
            )
        )

        actions.user.code_insert_function(result, None)

    # def code_public_static_function(text: str):
    #     result = "public static void {}".format(
    #         actions.user.formatted_text(
    #             text, settings.get("user.code_public_function_formatter")
    #         )
    #     )

    #     actions.user.code_insert_function(result, None)

    def code_insert_type_annotation(type: str):
        actions.insert(f": {type}")

    def code_insert_return_type(type: str):
        actions.insert(f": {type}")
