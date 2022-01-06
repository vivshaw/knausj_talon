tag: user.code_operators
-
#pointer operators
deref: user.code_operator_indirection()
dress of: user.code_operator_address_of()
op arrow: user.code_operator_structure_dereference()

#lambda
lambda: user.code_operator_lambda()

#subscript
op subscript: user.code_operator_subscript()

#assignment
qual: user.code_operator_assignment()

#math operators
minus: user.code_operator_subtraction()
mine eek: user.code_operator_subtraction_assignment()
plus: user.code_operator_addition()
plus eek: user.code_operator_addition_assignment()
times: user.code_operator_multiplication()
times eek: user.code_operator_multiplication_assignment()
quotient: user.code_operator_division()
quotient eek: user.code_operator_division_assignment()
mod: user.code_operator_modulo()
mod eek: user.code_operator_modulo_assignment()
expy: user.code_operator_exponent()

#comparison operators
equal: user.code_operator_equal()
not qual: user.code_operator_not_equal()
greater than: user.code_operator_greater_than()
less than: user.code_operator_less_than()
greequal: user.code_operator_greater_than_or_equal_to()
leequal: user.code_operator_less_than_or_equal_to()
(op | is) in: user.code_operator_in()

#logical operators
and: user.code_operator_and()
or: user.code_operator_or()

#bitwise operators
[op] bitwise and: user.code_operator_bitwise_and()
[op] increment: user.code_operator_increment()
[op] bitwise or: user.code_operator_bitwise_or()
(op | logical | bitwise) (ex | exclusive) or: user.code_operator_bitwise_exclusive_or()
(op | logical | bitwise) (left shift | shift left): user.code_operator_bitwise_left_shift()
(op | logical | bitwise) (right shift | shift right): user.code_operator_bitwise_right_shift()
(op | logical | bitwise) (ex | exclusive) or equals: user.code_operator_bitwise_exclusive_or_equals()
[(op | logical | bitwise)] (left shift | shift left) equals: user.code_operator_bitwise_left_shift_equals()
[(op | logical | bitwise)] (left right | shift right) equals: user.code_operator_bitwise_right_shift_equals()

#tbd
(op | pad) colon: " : "
