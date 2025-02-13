Python 3.10.3 (v3.10.3:a342a49189, Mar 16 2022, 09:34:18) [Clang 13.0.0 (clang-1300.0.29.30)] on darwin
Type "help", "copyright", "credits" or "license()" for more information.
help(round)
Help on built-in function round in module builtins:

round(number, ndigits=None)
    Round a number to a given precision in decimal digits.
    
    The return value is an integer if ndigits is omitted or None.  Otherwise
    the return value has the same type as the number.  ndigits may be negative.

round(45)
45
help(id)
Help on built-in function id in module builtins:

id(obj, /)
    Return the identity of an object.
    
    This is guaranteed to be unique among simultaneously existing objects.
    (CPython uses the object's memory address.)

look = 5
     
id(look)
     
4410950000
id(5)
     
4410950000
id(6)
     
4410950032
apple = banana
     
Traceback (most recent call last):
  File "<pyshell#7>", line 1, in <module>
    apple = banana
NameError: name 'banana' is not defined
round(45.342)
     
45
def f(x):
    return (2 * x) ** x

f(12)
36520347436056576
