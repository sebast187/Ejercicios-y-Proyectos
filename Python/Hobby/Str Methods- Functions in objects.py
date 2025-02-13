Python 3.10.6 (v3.10.6:9c7b4bd164, Aug  1 2022, 17:13:48) [Clang 13.0.0 (clang-1300.0.29.30)] on darwin
Type "help", "copyright", "credits" or "license()" for more information.
import math
math.sqrt(4.0)
2.0
white_rabbit = "I'm late! I'm late! For a very important date!"
white.rabbit.lower()
Traceback (most recent call last):
  File "<pyshell#3>", line 1, in <module>
    white.rabbit.lower()
NameError: name 'white' is not defined
white_rabbit.lower()
"i'm late! i'm late! for a very important date!"
white_rabbit
"I'm late! I'm late! For a very important date!"
dir(white_rabbit)
['__add__', '__class__', '__contains__', '__delattr__', '__dir__', '__doc__', '__eq__', '__format__', '__ge__', '__getattribute__', '__getitem__', '__getnewargs__', '__gt__', '__hash__', '__init__', '__init_subclass__', '__iter__', '__le__', '__len__', '__lt__', '__mod__', '__mul__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__rmod__', '__rmul__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', 'capitalize', 'casefold', 'center', 'count', 'encode', 'endswith', 'expandtabs', 'find', 'format', 'format_map', 'index', 'isalnum', 'isalpha', 'isascii', 'isdecimal', 'isdigit', 'isidentifier', 'islower', 'isnumeric', 'isprintable', 'isspace', 'istitle', 'isupper', 'join', 'ljust', 'lower', 'lstrip', 'maketrans', 'partition', 'removeprefix', 'removesuffix', 'replace', 'rfind', 'rindex', 'rjust', 'rpartition', 'rsplit', 'rstrip', 'split', 'splitlines', 'startswith', 'strip', 'swapcase', 'title', 'translate', 'upper', 'zfill']
dir(str)
['__add__', '__class__', '__contains__', '__delattr__', '__dir__', '__doc__', '__eq__', '__format__', '__ge__', '__getattribute__', '__getitem__', '__getnewargs__', '__gt__', '__hash__', '__init__', '__init_subclass__', '__iter__', '__le__', '__len__', '__lt__', '__mod__', '__mul__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__rmod__', '__rmul__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', 'capitalize', 'casefold', 'center', 'count', 'encode', 'endswith', 'expandtabs', 'find', 'format', 'format_map', 'index', 'isalnum', 'isalpha', 'isascii', 'isdecimal', 'isdigit', 'isidentifier', 'islower', 'isnumeric', 'isprintable', 'isspace', 'istitle', 'isupper', 'join', 'ljust', 'lower', 'lstrip', 'maketrans', 'partition', 'removeprefix', 'removesuffix', 'replace', 'rfind', 'rindex', 'rjust', 'rpartition', 'rsplit', 'rstrip', 'split', 'splitlines', 'startswith', 'strip', 'swapcase', 'title', 'translate', 'upper', 'zfill']
help(str.lower)
Help on method_descriptor:

lower(self, /)
    Return a copy of the string converted to lowercase.

help(str.count)
Help on method_descriptor:

count(...)
    S.count(sub[, start[, end]]) -> int
    
    Return the number of non-overlapping occurrences of substring sub in
    string S[start:end].  Optional arguments start and end are
    interpreted as in slice notation.

white_rabbit.count('ate')
3
"computer".capitalize()
'Computer'
"computer".capitalize()
'Computer'
"Computer".capitalize()
'Computer'
white_rabbit
"I'm late! I'm late! For a very important date!"
white_rabbit.find('late')
4
white_rabbit.find('late', 7)
14
white_rabbit.find('moogah')
-1
white_rabbit.find('Late')
-1
white_rabbit.rfind('late')
14
s = "        I'm feeling spaced out.      "
s.lstrip()
"I'm feeling spaced out.      "
s.rstrip()
"        I'm feeling spaced out."
s.strip()
"I'm feeling spaced out."
s
"        I'm feeling spaced out.      "
white_rabbit.count('ate').lower()
Traceback (most recent call last):
  File "<pyshell#25>", line 1, in <module>
    white_rabbit.count('ate').lower()
AttributeError: 'int' object has no attribute 'lower'
white_rabbit.count('ate'.lower())
3
