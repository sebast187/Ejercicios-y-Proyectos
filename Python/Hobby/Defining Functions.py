Python 3.10.3 (v3.10.3:a342a49189, Mar 16 2022, 09:34:18) [Clang 13.0.0 (clang-1300.0.29.30)] on darwin
Type "help", "copyright", "credits" or "license()" for more information.
def f(x):
    return x ** 2

f(3)
9
result = f(3)
result
9
def increment(x):
    return x + 1

increment(5)
6
def area(base, height):
    return base * height / 2

area(3, 4)
6.0
area(10, 7.45)
37.25

================================================================================ RESTART: Shell ===============================================================================
area(10, 7.45)
Traceback (most recent call last):
  File "<pyshell#16>", line 1, in <module>
    area(10, 7.45)
NameError: name 'area' is not defined

===================== RESTART: /Users/sebastianq./Desktop/triangle.py =====================
area(10, 7.45)
37.25
perimeter(3, 4, 5)
Traceback (most recent call last):
  File "<pyshell#18>", line 1, in <module>
    perimeter(3, 4, 5)
NameError: name 'perimeter' is not defined

===================== RESTART: /Users/sebastianq./Desktop/triangle.py =====================
perimeter(3, 4, 5)
12
