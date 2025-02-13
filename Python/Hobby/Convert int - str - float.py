Python 3.10.3 (v3.10.3:a342a49189, Mar 16 2022, 09:34:18) [Clang 13.0.0 (clang-1300.0.29.30)] on darwin
Type "help", "copyright", "credits" or "license()" for more information.
str(3)
'3'
three = str(3)
three
'3'
three * 77
'33333333333333333333333333333333333333333333333333333333333333333333333333333'
int(three * 5)
33333
str(int(three * 5))
'33333'
three * 5
'33333'
str(4.65)
'4.65'
int('456')
456
float('456')
456.0
int('I have 7 apples')
Traceback (most recent call last):
  File "<pyshell#10>", line 1, in <module>
    int('I have 7 apples')
ValueError: invalid literal for int() with base 10: 'I have 7 apples'
str(int('99'))
'99'
str(int('99')) == '99'
True
input("Enter the number of shoes: ")
Enter the number of shoes: 863
'863'
num_shoes_left = 627
num_shoes_wanted = int(input("Enter the number of shoes: "))
Enter the number of shoes: 863
num_shoes_left >= num_shoes_wanted
False
