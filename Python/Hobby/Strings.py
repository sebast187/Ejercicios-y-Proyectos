Python 3.10.3 (v3.10.3:a342a49189, Mar 16 2022, 09:34:18) [Clang 13.0.0 (clang-1300.0.29.30)] on darwin
Type "help", "copyright", "credits" or "license()" for more information.
'hello'
'hello'
"how are you"
'how are you'
'how are you?'
'how are you?'
'short- and long-term'
'short- and long-term'
sunny_greeting = 'What a beautiful day!'
storm_greeting = 'Wow, you're dripping wet.'
SyntaxError: unterminated string literal (detected at line 1)
storm_greeting = "Wow, you're dripping wet."
sunny_greeting
'What a beautiful day!'
storm_greeting
"Wow, you're dripping wet."
storm_greeting = 'Wow, you\'re dripping wet.'
storm_greeting
"Wow, you're dripping wet."
'personal' + 'penguin'
'personalpenguin'
'I want to be your personal ' + 'penguin'
'I want to be your personal penguin'
'I want to be your personal ' + 'penguin' + '!'
'I want to be your personal penguin!'
puzzle_start = 'I want to be your personal '
punctuation = '!'
noun = 'earthworm'
puzzle_start + noun + punctuation
'I want to be your personal earthworm!'
'ha' * 5
'hahahahaha'
'Bwa' + 'ha' * 5
'Bwahahahahaha'
('Bwa' + 'ha') * 5
'BwahaBwahaBwahaBwahaBwaha'
'My shoe size is: ' + 8.5
Traceback (most recent call last):
  File "<pyshell#21>", line 1, in <module>
    'My shoe size is: ' + 8.5
TypeError: can only concatenate str (not "float") to str
'ha' * '5'
Traceback (most recent call last):
  File "<pyshell#22>", line 1, in <module>
    'ha' * '5'
TypeError: can't multiply sequence by non-int of type 'str'
'a' + 'b'
'ab'
'a' - 'b'
Traceback (most recent call last):
  File "<pyshell#24>", line 1, in <module>
    'a' - 'b'
TypeError: unsupported operand type(s) for -: 'str' and 'str'
'a' / 'b'
Traceback (most recent call last):
  File "<pyshell#25>", line 1, in <module>
    'a' / 'b'
TypeError: unsupported operand type(s) for /: 'str' and 'str'
'a' ** 'b'
Traceback (most recent call last):
  File "<pyshell#26>", line 1, in <module>
    'a' ** 'b'
TypeError: unsupported operand type(s) for ** or pow(): 'str' and 'str'
