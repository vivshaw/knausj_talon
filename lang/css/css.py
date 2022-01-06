from talon import Module, Context, actions, ui, imgui, settings

mod = Module()

ctx = Context()
ctx.matches = r"""
mode: user.css
mode: user.auto_lang 
and code.language: css
"""

@mod.action_class
class Actions:
    # Unique actions for CSS

    def css_class(text: str):
        """Formats a class"""
        actions.auto_insert(".")
        actions.insert(actions.user.formatted_text(text, "PRIVATE_CAMEL_CASE"))
        actions.auto_insert(" {}")
        actions.key("left")
        actions.key("enter")

    def css_id(text: str):
        """Formats an id"""
        actions.auto_insert("#")
        actions.insert(actions.user.formatted_text(text, "PRIVATE_CAMEL_CASE"))
        actions.auto_insert(" {}")
        actions.key("left")
        actions.key("enter")

    def css_rule(text: str):
        """Formats a rule"""
        actions.insert(actions.user.formatted_text(text, "DASH_SEPARATED"))
        actions.auto_insert(": ;")
        actions.key("left")