find it:
    edit.find()

next one:
    edit.find_next()

go word left:
    edit.word_left()

go word right:
    edit.word_right()

lep:
    edit.left()

rock:
    edit.right()

hub:
    edit.up()

dune:
    edit.down()

go line start:
    edit.line_start()

go line end:
    edit.line_end()

lep way:
    edit.line_start()
    edit.line_start()

rock way:
    edit.line_end()

dune way:
    edit.file_end()

hub way:
    edit.file_start()
    
go bottom:
    edit.file_end()
    
go top:
    edit.file_start()

go page down:
    edit.page_down()

go page up:
    edit.page_up()

# selecting
grab line:
    edit.select_line()

grab all:
    edit.select_all()

grab lep:
    edit.extend_left()

grab rock:
    edit.extend_right()

grab hub:
    edit.extend_line_up()

grab dune:
    edit.extend_line_down()

grab word:
    edit.select_word()

grab lep word:
    edit.extend_word_left()

grab rock word:
    edit.extend_word_right()

grab lep way:
    edit.extend_line_start()

grab rock way:
    edit.extend_line_end()

grab hub way:
    edit.extend_file_start()

grab dune way:
    edit.extend_file_end()

# editing
indent [more]:
    edit.indent_more()

(indent less | out dent):
    edit.indent_less()

# deleting
kill line:
    edit.delete_line()

kill up:
    edit.extend_line_up()
    edit.delete()

kill down:
    edit.extend_line_down()
    edit.delete()

scratch word:
    edit.delete_word()

kill word:
    edit.extend_word_right()
    edit.delete()

scratch way:
    edit.extend_line_start()
    edit.delete()

kill way:
    edit.extend_line_end()
    edit.delete()

kill up way:
    edit.extend_file_start()
    edit.delete()

kill down way:
    edit.extend_file_end()
    edit.delete()

kill all:
    edit.select_all()
    edit.delete()

#copy commands
copy all:
    edit.select_all()
    edit.copy()
#to do: do we want these variants, seem to conflict
# copy left:
#      edit.extend_left()
#      edit.copy()
# copy right:
#     edit.extend_right()
#     edit.copy()
# copy up:
#     edit.extend_up()
#     edit.copy()
# copy down:
#     edit.extend_down()
#     edit.copy()

copy word:
    edit.select_word()
    edit.copy()

copy word left:
    edit.extend_word_left()
    edit.copy()

copy word right:
    edit.extend_word_right()
    edit.copy()

copy line:
    edit.select_line()
    edit.copy()

#cut commands
cut all:
    edit.select_all()
    edit.cut()
#to do: do we want these variants
# cut left:
#      edit.select_all()
#      edit.cut()
# cut right:
#      edit.select_all()
#      edit.cut()
# cut up:
#      edit.select_all()
#     edit.cut()
# cut down:
#     edit.select_all()
#     edit.cut()

cut word:
    edit.select_word()
    edit.cut()

cut word left:
    edit.extend_word_left()
    edit.cut()

cut word right:
    edit.extend_word_right()
    edit.cut()

cut line:
    edit.select_line()
    edit.cut()

