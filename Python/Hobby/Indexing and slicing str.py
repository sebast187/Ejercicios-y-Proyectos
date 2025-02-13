Python 3.10.3 (v3.10.3:a342a49189, Mar 16 2022, 09:34:18) [Clang 13.0.0 (clang-1300.0.29.30)] on darwin
Type "help", "copyright", "credits" or "license()" for more information.
s = 'Learn to Program'
s[0]
'L'
s[1]
'e'
s[2]
'a'
s[3]
'r'
s[4]
'n'
s[-1]
'm'
s[-2]
'a'
s[-3]
'r'
s[0:5]
'Learn'
s[6:8]
'to'
s[9:16]
'Program'
s[9:len(s)]
'Program'
s[9:]
'Program'
s[:8]
'Learn to'
s[:]
'Learn to Program'
s
'Learn to Program'
s[1:8]
'earn to'
s[1:-8]
'earn to'
s[-15:-8]
'earn to'
s[6] = d
Traceback (most recent call last):
  File "<pyshell#20>", line 1, in <module>
    s[6] = d
NameError: name 'd' is not defined. Did you mean: 'id'?
s[6] = 'd'
Traceback (most recent call last):
  File "<pyshell#21>", line 1, in <module>
    s[6] = 'd'
TypeError: 'str' object does not support item assignment
s[9:16] = 'run'
Traceback (most recent call last):
  File "<pyshell#22>", line 1, in <module>
    s[9:16] = 'run'
TypeError: 'str' object does not support item assignment
s[:5] + 'ed' + s[5:]
'Learned to Program'
s = s[:5] + 'ed' + s[5:]
s
'Learned to Program'
