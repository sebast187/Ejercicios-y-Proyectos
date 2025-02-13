Python 3.10.6 (v3.10.6:9c7b4bd164, Aug  1 2022, 17:13:48) [Clang 13.0.0 (clang-1300.0.29.30)] on darwin
Type "help", "copyright", "credits" or "license()" for more information.
'do' in "don't"
True
len('aabbcc') == 6
True
len('')
0
dance_style = 'Gangnam'
dance_style[3]
'g'
dance_style[-4]
'g'
title = 'King'
title[2]
'n'
help(slice())
Traceback (most recent call last):
  File "<pyshell#8>", line 1, in <module>
    help(slice())
TypeError: slice expected at least 1 argument, got 0
help(slice)
Help on class slice in module builtins:

class slice(object)
 |  slice(stop)
 |  slice(start, stop[, step])
 |  
 |  Create a slice object.  This is used for extended slicing (e.g. a[0:10:2]).
 |  
 |  Methods defined here:
 |  
 |  __eq__(self, value, /)
 |      Return self==value.
 |  
 |  __ge__(self, value, /)
 |      Return self>=value.
 |  
 |  __getattribute__(self, name, /)
 |      Return getattr(self, name).
 |  
 |  __gt__(self, value, /)
 |      Return self>value.
 |  
 |  __le__(self, value, /)
 |      Return self<=value.
 |  
 |  __lt__(self, value, /)
 |      Return self<value.
 |  
 |  __ne__(self, value, /)
 |      Return self!=value.
 |  
 |  __reduce__(...)
 |      Return state information for pickling.
 |  
 |  __repr__(self, /)
 |      Return repr(self).
 |  
 |  indices(...)
 |      S.indices(len) -> (start, stop, stride)
 |      
 |      Assuming a sequence of length len, calculate the start and stop
 |      indices, and the stride length of the extended slice described by
 |      S. Out of bounds indices are clipped in a manner consistent with the
 |      handling of normal slices.
 |  
 |  ----------------------------------------------------------------------
 |  Static methods defined here:
 |  
 |  __new__(*args, **kwargs) from builtins.type
 |      Create and return a new object.  See help(type) for accurate signature.
 |  
 |  ----------------------------------------------------------------------
 |  Data descriptors defined here:
 |  
 |  start
 |  
 |  step
 |  
 |  stop
 |  
 |  ----------------------------------------------------------------------
 |  Data and other attributes defined here:
 |  
 |  __hash__ = None

title slice(2)
SyntaxError: invalid syntax
s = 'pineapple'
s[]
SyntaxError: invalid syntax
s[4:9]
'apple'
s[-5:]
'apple'
s[-5:-1]
'appl'
s[5:]
'pple'
s[4:8]
'appl'
s[:1]
'p'
'12.34'.isalnum()
False
'12.34'.isalnum()
False
help(isalnum)
Traceback (most recent call last):
  File "<pyshell#22>", line 1, in <module>
    help(isalnum)
NameError: name 'isalnum' is not defined
help(isalnum())
Traceback (most recent call last):
  File "<pyshell#23>", line 1, in <module>
    help(isalnum())
NameError: name 'isalnum' is not defined
help(.isalnum())
SyntaxError: invalid syntax
help(.isalnum)
SyntaxError: invalid syntax
help(str.isalnum)
Help on method_descriptor:

isalnum(self, /)
    Return True if the string is an alpha-numeric string, False otherwise.
    
    A string is alpha-numeric if all characters in the string are alpha-numeric and
    there is at least one character in the string.

'apple'.upper
<built-in method upper of str object at 0x1011621b0>
'apple'.upper()
'APPLE'
'apple'.islower()
True
'apple'.upper().islower()
False
'abc123'.isalnum()
True
s1 = runs
Traceback (most recent call last):
  File "<pyshell#32>", line 1, in <module>
    s1 = runs
NameError: name 'runs' is not defined. Did you mean: 'round'?
s1 = 'runs'
s2 = 'carunsd'
s1.find(s2)
-1
s2 = 'un'
s1.find(s2)
1
help(str.find)
Help on method_descriptor:

find(...)
    S.find(sub[, start[, end]]) -> int
    
    Return the lowest index in S where substring sub is found,
    such that sub is contained within S[start:end].  Optional
    arguments start and end are interpreted as in slice notation.
    
    Return -1 on failure.

s1 = apple
Traceback (most recent call last):
  File "<pyshell#39>", line 1, in <module>
    s1 = apple
NameError: name 'apple' is not defined. Did you mean: 'tuple'?
s1 = 'apple'
s2 = 'p'
s1.find(s2)
1
s1.find(s2)
1
s1.find(s2)
1
digits = '0123456789'
result = 100

for digit in digits:
    result = result - int(digit)

print(result)
SyntaxError: multiple statements found while compiling a single statement
digits = '0123456789'
result = 100
for digit in digits:
    result = result - int(digit)
print(result)
SyntaxError: invalid syntax
for digit in digits:
    result = result - int(digit)
    
print(result)
SyntaxError: invalid syntax
for digit in digits:
    result = result - int(digit)

    
print(result)
55
result = ''
for digit in digits:
    result = result + digit * 2

    

print(result)
00112233445566778899
digits = '0123456789'
result = 100

for digit in digits:
    result = result - int(digit)

print(result)
SyntaxError: multiple statements found while compiling a single statement
message = 'Happy 29th!'
new_message = ''
for char in message:
    if char.isdigit():
        new_message = new_message + str((int(char) + 1) % 10)
    else:
        new_message = new_message + char

        
print(new_message)
Happy 30th!
for char in message:
    if char.isdigit():
        new_message = new_message + str((int(char) + 1) % 10)
    else:
        new_message = new_message + char

        
print(new_message)
Happy 30th!Happy 30th!
for char in message:
    if char.isdigit():
        new_message = new_message + str((int(char) + 1) % 10)
    else:
        new_message = new_message + char

        
print(new_message)
Happy 30th!Happy 30th!Happy 30th!
for char in message:
    if char.isdigit():
        new_message = new_message + str((int(char) + 1) % 10)
    else:
        new_message = new_message + char

        
for char in message:
    if char.isdigit():
        new_message = new_message + str((int(char) + 1) % 10)
    else:
        new_message = new_message + char

        
for char in message:
    new_message = new_message + str((int(char) + 1) % 10)

    
Traceback (most recent call last):
  File "<pyshell#76>", line 2, in <module>
    new_message = new_message + str((int(char) + 1) % 10)
ValueError: invalid literal for int() with base 10: 'H'
