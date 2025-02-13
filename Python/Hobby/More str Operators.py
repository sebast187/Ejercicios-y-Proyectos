Python 3.10.3 (v3.10.3:a342a49189, Mar 16 2022, 09:34:18) [Clang 13.0.0 (clang-1300.0.29.30)] on darwin
Type "help", "copyright", "credits" or "license()" for more information.
solution = 'cat'
solution == 'cat'
True
solution != 'cat'
False
solution = 'dog'
solution == 'cat'
False
solution != 'cat
SyntaxError: unterminated string literal (detected at line 1)
solution != 'cat'
True
'abracadabra' < 'ace'
True
'abracadabra' > 'ace'
False
'a' <= 'a'
True
'A' <= 'B'
True
'a' != 'A'
True
'a' < 'A'
False
'a' > 'A'
True
',' < '3'
True
's' == 3
False
's' <= 3
Traceback (most recent call last):
  File "<pyshell#16>", line 1, in <module>
    's' <= 3
TypeError: '<=' not supported between instances of 'str' and 'int'
's' <= '3'
False
'cad' in 'abracadabra'
True
'c' in 'aeiou'
False
'zoo' in 'ooze'
False
'' in 'abc'
True
'' in ''
True
len("abracadabra")
11
len('abracadabra')
11
len('Bwa' + "ha" * 10)
23
len("Hello World!")
12
