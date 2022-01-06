tag: user.react
-
# Borrowed from https://github.com/eprev/talon/blob/master/misc/react.talon
#
# TODO: Refactor and replace this to better fit my needs
# TODO: Pull out HTML stuff into a tag

<user.create_element> [over]: insert(create_element)
<user.create_closed_element> [over]:
  insert(create_closed_element)
  key('left left left')

<user.create_native_element> [over]: insert(create_native_element)
<user.create_image> [over]:
  insert(create_image)
  key('left left left left left left left left left left left')

# <user.create_styled_component> [over]:
#   insert(create_styled_component)
#   key('left enter enter up tab')
# <user.create_styled_wrapper> [over]:
#   insert(create_styled_wrapper)
#   key('left enter enter up up end left left')

# <user.create_function_component> [over]:
#   insert(create_function_component)
#   key('left enter')
#
fragment:
  insert("<></>")
  key('left left left enter')

# react: insert("import React from 'react';")
#
# <user.default_import>: insert(default_import)
# <user.component_import>: insert(component_import)
# <user.hook_import>: insert(hook_import)
#
<user.text_attribute>:
  insert(text_attribute)
  key('left')
<user.squiggly_attribute>:
  insert(squiggly_attribute)
  key('left')
#
# <user.state_hook>:
#   insert(state_hook)
#   key('left left')
# <user.rough_hook>:
#   insert(rough_hook)
# effect hook:
#   insert('React.useEffect(() => {}, []);')
#   key('left left left left left left left enter')
#
#