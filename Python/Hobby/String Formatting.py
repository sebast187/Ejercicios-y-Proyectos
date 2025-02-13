Python 3.10.3 (v3.10.3:a342a49189, Mar 16 2022, 09:34:18) [Clang 13.0.0 (clang-1300.0.29.30)] on darwin
Type "help", "copyright", "credits" or "license()" for more information.
print("hello")
hello
print(3 + 7 - 3)
7
print("hello", "there")
hello there

===================== RESTART: /Users/sebastianq./Desktop/calc.py =====================
answer_return = square_return(4)
answer_return
16
answer_print = square_print(4)
The square of num is 16
answer_print
answer_return * 5
80
answer_print * 5
Traceback (most recent call last):
  File "<pyshell#8>", line 1, in <module>
    answer_print * 5
TypeError: unsupported operand type(s) for *: 'NoneType' and 'int'
def add(number1, number2):
    return number1 + number2
    print("hello")

    
result = add(1, 3)
