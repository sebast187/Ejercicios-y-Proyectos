Python 3.10.6 (v3.10.6:9c7b4bd164, Aug  1 2022, 17:13:48) [Clang 13.0.0 (clang-1300.0.29.30)] on darwin
Type "help", "copyright", "credits" or "license()" for more information.

= RESTART: /Users/sebas/Desktop/Cool Things/Coding/Python/Beginner/Week 4-5/loops_over_str.py
count_vowels('Happy Anniversary!')
5
count_vowels('xyz')
0

= RESTART: /Users/sebas/Desktop/Cool Things/Coding/Python/Beginner/Week 4-5/loops_over_str.py
count_vowels('Happy Anniversary!')
Traceback (most recent call last):
  File "<pyshell#2>", line 1, in <module>
    count_vowels('Happy Anniversary!')
  File "/Users/sebas/Desktop/Cool Things/Coding/Python/Beginner/Week 4-5/loops_over_str.py", line 15, in count_vowels
    for char in s:
TypeError: 'int' object is not iterable

= RESTART: /Users/sebas/Desktop/Cool Things/Coding/Python/Beginner/Week 4-5/loops_over_str.py
count_vowels('Happy Anniversary!')
5
count_vowels('')
0

= RESTART: /Users/sebas/Desktop/Cool Things/Coding/Python/Beginner/Week 4-5/loops_over_str.py
collect_vowels('Happy Anniversary!')
'aAiea'
collect_vowels('xyz')
''
count_vowels('')
0
collect_vowels('')
''

= RESTART: /Users/sebas/Desktop/Cool Things/Coding/Python/Beginner/Week 4-5/loops_over_str.py
has_vowel('xyz')
False
has_vowel('Anniversary')
Traceback (most recent call last):
  File "<pyshell#10>", line 1, in <module>
    has_vowel('Anniversary')
  File "/Users/sebas/Desktop/Cool Things/Coding/Python/Beginner/Week 4-5/loops_over_str.py", line 57, in has_vowel
    vowel_found = true
NameError: name 'true' is not defined. Did you mean: 'True'?

= RESTART: /Users/sebas/Desktop/Cool Things/Coding/Python/Beginner/Week 4-5/loops_over_str.py
has_vowel('Anniversary')
Traceback (most recent call last):
  File "<pyshell#11>", line 1, in <module>
    has_vowel('Anniversary')
  File "/Users/sebas/Desktop/Cool Things/Coding/Python/Beginner/Week 4-5/loops_over_str.py", line 57, in has_vowel
    vowel_found != false
NameError: name 'false' is not defined. Did you mean: 'False'?

= RESTART: /Users/sebas/Desktop/Cool Things/Coding/Python/Beginner/Week 4-5/loops_over_str.py
has_vowel('Anniversary')
True
has_vowel('xyz')
False
