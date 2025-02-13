Python 3.10.3 (v3.10.3:a342a49189, Mar 16 2022, 09:34:18) [Clang 13.0.0 (clang-1300.0.29.30)] on darwin
Type "help", "copyright", "credits" or "license()" for more information.
5 + 5
10
90 // 5
18
print "hello world"
SyntaxError: Missing parentheses in call to 'print'. Did you mean print(...)?
print("hello world")
hello world
i = 5
print ("The value of i is: "i)
SyntaxError: invalid syntax. Perhaps you forgot a comma?
print ("The value of i is: " + i )
Traceback (most recent call last):
  File "<pyshell#6>", line 1, in <module>
    print ("The value of i is: " + i )
TypeError: can only concatenate str (not "int") to str
print("5 + " + i + "is 10")
Traceback (most recent call last):
  File "<pyshell#7>", line 1, in <module>
    print("5 + " + i + "is 10")
TypeError: can only concatenate str (not "int") to str
print(i)
5
print("5 + "i"is 10")
SyntaxError: invalid syntax. Perhaps you forgot a comma?
print("5 + ",i,"is 10")
5 +  5 is 10
print("5 + ", i, "is 10")
5 +  5 is 10
print("5 +", i, "is 10")
5 + 5 is 10
print(i + i)
10
print("The value of i is:",i)
ç
SyntaxError: multiple statements found while compiling a single statement
print("The value of i is:",i)
The value of i is: 5
