Python 3.10.3 (v3.10.3:a342a49189, Mar 16 2022, 09:34:18) [Clang 13.0.0 (clang-1300.0.29.30)] on darwin
Type "help", "copyright", "credits" or "license()" for more information.
int(99.9)
99
string(int(99))
Traceback (most recent call last):
  File "<pyshell#1>", line 1, in <module>
    string(int(99))
NameError: name 'string' is not defined
str(int(99))
'99'
15 % 12
3
not 12 % 12 == 0
False
not (12 % 12 != 0)
True
age1 = input("How old are you? ")
How old are you? 24
age2 = input("How old is your best friend? ")
How old is your best friend? 28
print(int(age1) + int(age2))
52
print(str(int(age1) + int(age2)))
52
print(int(age1 + age2))
2428
x = int(age1)
y = int(age2)
print(x + y)
52
print(str(x + y))
52
import(math())
SyntaxError: invalid syntax
import(math)
SyntaxError: invalid syntax
import math
help(math())
Traceback (most recent call last):
  File "<pyshell#18>", line 1, in <module>
    help(math())
TypeError: 'module' object is not callable
help(math)
Help on module math:

NAME
    math

MODULE REFERENCE
    https://docs.python.org/3.10/library/math.html
    
    The following documentation is automatically generated from the Python
    source files.  It may be incomplete, incorrect or include features that
    are considered implementation detail and may vary between Python
    implementations.  When in doubt, consult the module reference at the
    location listed above.

DESCRIPTION
    This module provides access to the mathematical functions
    defined by the C standard.

FUNCTIONS
    acos(x, /)
        Return the arc cosine (measured in radians) of x.
        
        The result is between 0 and pi.
    
    acosh(x, /)
        Return the inverse hyperbolic cosine of x.
    
    asin(x, /)
        Return the arc sine (measured in radians) of x.
        
        The result is between -pi/2 and pi/2.
    
    asinh(x, /)
        Return the inverse hyperbolic sine of x.
    
    atan(x, /)
        Return the arc tangent (measured in radians) of x.
        
        The result is between -pi/2 and pi/2.
    
    atan2(y, x, /)
        Return the arc tangent (measured in radians) of y/x.
        
        Unlike atan(y/x), the signs of both x and y are considered.
    
    atanh(x, /)
        Return the inverse hyperbolic tangent of x.
    
    ceil(x, /)
        Return the ceiling of x as an Integral.
        
        This is the smallest integer >= x.
    
    comb(n, k, /)
        Number of ways to choose k items from n items without repetition and without order.
        
        Evaluates to n! / (k! * (n - k)!) when k <= n and evaluates
        to zero when k > n.
        
        Also called the binomial coefficient because it is equivalent
        to the coefficient of k-th term in polynomial expansion of the
        expression (1 + x)**n.
        
        Raises TypeError if either of the arguments are not integers.
        Raises ValueError if either of the arguments are negative.
    
    copysign(x, y, /)
        Return a float with the magnitude (absolute value) of x but the sign of y.
        
        On platforms that support signed zeros, copysign(1.0, -0.0)
        returns -1.0.
    
    cos(x, /)
        Return the cosine of x (measured in radians).
    
    cosh(x, /)
        Return the hyperbolic cosine of x.
    
    degrees(x, /)
        Convert angle x from radians to degrees.
    
    dist(p, q, /)
        Return the Euclidean distance between two points p and q.
        
        The points should be specified as sequences (or iterables) of
        coordinates.  Both inputs must have the same dimension.
        
        Roughly equivalent to:
            sqrt(sum((px - qx) ** 2.0 for px, qx in zip(p, q)))
    
    erf(x, /)
        Error function at x.
    
    erfc(x, /)
        Complementary error function at x.
    
    exp(x, /)
        Return e raised to the power of x.
    
    expm1(x, /)
        Return exp(x)-1.
        
        This function avoids the loss of precision involved in the direct evaluation of exp(x)-1 for small x.
    
    fabs(x, /)
        Return the absolute value of the float x.
    
    factorial(x, /)
        Find x!.
        
        Raise a ValueError if x is negative or non-integral.
    
    floor(x, /)
        Return the floor of x as an Integral.
        
        This is the largest integer <= x.
    
    fmod(x, y, /)
        Return fmod(x, y), according to platform C.
        
        x % y may differ.
    
    frexp(x, /)
        Return the mantissa and exponent of x, as pair (m, e).
        
        m is a float and e is an int, such that x = m * 2.**e.
        If x is 0, m and e are both 0.  Else 0.5 <= abs(m) < 1.0.
    
    fsum(seq, /)
        Return an accurate floating point sum of values in the iterable seq.
        
        Assumes IEEE-754 floating point arithmetic.
    
    gamma(x, /)
        Gamma function at x.
    
    gcd(*integers)
        Greatest Common Divisor.
    
    hypot(...)
        hypot(*coordinates) -> value
        
        Multidimensional Euclidean distance from the origin to a point.
        
        Roughly equivalent to:
            sqrt(sum(x**2 for x in coordinates))
        
        For a two dimensional point (x, y), gives the hypotenuse
        using the Pythagorean theorem:  sqrt(x*x + y*y).
        
        For example, the hypotenuse of a 3/4/5 right triangle is:
        
            >>> hypot(3.0, 4.0)
            5.0
    
    isclose(a, b, *, rel_tol=1e-09, abs_tol=0.0)
        Determine whether two floating point numbers are close in value.
        
          rel_tol
            maximum difference for being considered "close", relative to the
            magnitude of the input values
          abs_tol
            maximum difference for being considered "close", regardless of the
            magnitude of the input values
        
        Return True if a is close in value to b, and False otherwise.
        
        For the values to be considered close, the difference between them
        must be smaller than at least one of the tolerances.
        
        -inf, inf and NaN behave similarly to the IEEE 754 Standard.  That
        is, NaN is not close to anything, even itself.  inf and -inf are
        only close to themselves.
    
    isfinite(x, /)
        Return True if x is neither an infinity nor a NaN, and False otherwise.
    
    isinf(x, /)
        Return True if x is a positive or negative infinity, and False otherwise.
    
    isnan(x, /)
        Return True if x is a NaN (not a number), and False otherwise.
    
    isqrt(n, /)
        Return the integer part of the square root of the input.
    
    lcm(*integers)
        Least Common Multiple.
    
    ldexp(x, i, /)
        Return x * (2**i).
        
        This is essentially the inverse of frexp().
    
    lgamma(x, /)
        Natural logarithm of absolute value of Gamma function at x.
    
    log(...)
        log(x, [base=math.e])
        Return the logarithm of x to the given base.
        
        If the base not specified, returns the natural logarithm (base e) of x.
    
    log10(x, /)
        Return the base 10 logarithm of x.
    
    log1p(x, /)
        Return the natural logarithm of 1+x (base e).
        
        The result is computed in a way which is accurate for x near zero.
    
    log2(x, /)
        Return the base 2 logarithm of x.
    
    modf(x, /)
        Return the fractional and integer parts of x.
        
        Both results carry the sign of x and are floats.
    
    nextafter(x, y, /)
        Return the next floating-point value after x towards y.
    
    perm(n, k=None, /)
        Number of ways to choose k items from n items without repetition and with order.
        
        Evaluates to n! / (n - k)! when k <= n and evaluates
        to zero when k > n.
        
        If k is not specified or is None, then k defaults to n
        and the function returns n!.
        
        Raises TypeError if either of the arguments are not integers.
        Raises ValueError if either of the arguments are negative.
    
    pow(x, y, /)
        Return x**y (x to the power of y).
    
    prod(iterable, /, *, start=1)
        Calculate the product of all the elements in the input iterable.
        
        The default start value for the product is 1.
        
        When the iterable is empty, return the start value.  This function is
        intended specifically for use with numeric values and may reject
        non-numeric types.
    
    radians(x, /)
        Convert angle x from degrees to radians.
    
    remainder(x, y, /)
        Difference between x and the closest integer multiple of y.
        
        Return x - n*y where n*y is the closest integer multiple of y.
        In the case where x is exactly halfway between two multiples of
        y, the nearest even value of n is used. The result is always exact.
    
    sin(x, /)
        Return the sine of x (measured in radians).
    
    sinh(x, /)
        Return the hyperbolic sine of x.
    
    sqrt(x, /)
        Return the square root of x.
    
    tan(x, /)
        Return the tangent of x (measured in radians).
    
    tanh(x, /)
        Return the hyperbolic tangent of x.
    
    trunc(x, /)
        Truncates the Real x to the nearest Integral toward 0.
        
        Uses the __trunc__ magic method.
    
    ulp(x, /)
        Return the value of the least significant bit of the float x.

DATA
    e = 2.718281828459045
    inf = inf
    nan = nan
    pi = 3.141592653589793
    tau = 6.283185307179586

FILE
    /Library/Frameworks/Python.framework/Versions/3.10/lib/python3.10/lib-dynload/math.cpython-310-darwin.so


math.factorial(8)
40320
8 * 7 * 6 * 5 * 4 * 3 * 2 * 1
40320
Chapter_Quiz_Week_3.chapter_one(BOOM)
Traceback (most recent call last):
  File "<pyshell#22>", line 1, in <module>
    Chapter_Quiz_Week_3.chapter_one(BOOM)
NameError: name 'Chapter_Quiz_Week_3' is not defined

= RESTART: /Users/sebastianq./Desktop/Cool Things/Coding/Python/Beginner/Week 2-3/Chapter Quiz Week 3.py
Chapter_Quiz_Week_3.chapter_one(BOOM)
Traceback (most recent call last):
  File "<pyshell#23>", line 1, in <module>
    Chapter_Quiz_Week_3.chapter_one(BOOM)
NameError: name 'Chapter_Quiz_Week_3' is not defined
chapter_one(BOOM)
Traceback (most recent call last):
  File "<pyshell#24>", line 1, in <module>
    chapter_one(BOOM)
NameError: name 'BOOM' is not defined
chapter_one()
Traceback (most recent call last):
  File "<pyshell#25>", line 1, in <module>
    chapter_one()
TypeError: chapter_one() missing 1 required positional argument: 'name'

= RESTART: /Users/sebastianq./Desktop/Cool Things/Coding/Python/Beginner/Week 2-3/Chapter Quiz Week 3.py
chapter_one(BOOM)
Traceback (most recent call last):
  File "<pyshell#26>", line 1, in <module>
    chapter_one(BOOM)
NameError: name 'BOOM' is not defined

= RESTART: /Users/sebastianq./Desktop/Cool Things/Coding/Python/Beginner/Week 2-3/Chapter Quiz Week 3.py
chapter_one(BOOM)
Traceback (most recent call last):
  File "<pyshell#27>", line 1, in <module>
    chapter_one(BOOM)
NameError: name 'BOOM' is not defined

= RESTART: /Users/sebastianq./Desktop/Cool Things/Coding/Python/Beginner/Week 2-3/Chapter Quiz Week 3.py
chapter_one(BOOM)
Traceback (most recent call last):
  File "<pyshell#28>", line 1, in <module>
    chapter_one(BOOM)
NameError: name 'BOOM' is not defined
chapter_one(name)
Traceback (most recent call last):
  File "<pyshell#29>", line 1, in <module>
    chapter_one(name)
NameError: name 'name' is not defined
flights.py
Traceback (most recent call last):
  File "<pyshell#30>", line 1, in <module>
    flights.py
NameError: name 'flights' is not defined
flights
Traceback (most recent call last):
  File "<pyshell#31>", line 1, in <module>
    flights
NameError: name 'flights' is not defined
help(flights)
Traceback (most recent call last):
  File "<pyshell#32>", line 1, in <module>
    help(flights)
NameError: name 'flights' is not defined
help(flights())
Traceback (most recent call last):
  File "<pyshell#33>", line 1, in <module>
    help(flights())
NameError: name 'flights' is not defined
flights.report_status(18.5, 18.7)
Traceback (most recent call last):
  File "<pyshell#34>", line 1, in <module>
    flights.report_status(18.5, 18.7)
NameError: name 'flights' is not defined
flights(report_status(18.5, 18.7))
Traceback (most recent call last):
  File "<pyshell#35>", line 1, in <module>
    flights(report_status(18.5, 18.7))
NameError: name 'flights' is not defined

= RESTART: /Users/sebastianq./Desktop/Cool Things/Coding/Python/Beginner/Week 2-3/flights.py
flights(report_status(18.5, 18.7))
Traceback (most recent call last):
  File "<pyshell#36>", line 1, in <module>
    flights(report_status(18.5, 18.7))
NameError: name 'flights' is not defined
flights.report_status(18.5, 18.7)
Traceback (most recent call last):
  File "<pyshell#37>", line 1, in <module>
    flights.report_status(18.5, 18.7)
NameError: name 'flights' is not defined
report_status(18.5, 18.7)
'delayed'
flights.py
Traceback (most recent call last):
  File "<pyshell#39>", line 1, in <module>
    flights.py
NameError: name 'flights' is not defined
import flights
flights.report_status(19.2, 19.0)
'early'
flights.report_status(18.5, 18.7)
'delayed'
str(AHUEVO)
Traceback (most recent call last):
  File "<pyshell#43>", line 1, in <module>
    str(AHUEVO)
NameError: name 'AHUEVO' is not defined
str('AHUEVO')
'AHUEVO'
import Chapter_Quiz_Week_3
Traceback (most recent call last):
  File "<pyshell#45>", line 1, in <module>
    import Chapter_Quiz_Week_3
ModuleNotFoundError: No module named 'Chapter_Quiz_Week_3'
import Chapter Quiz Week 3
SyntaxError: invalid syntax
import chapterQuizWeek3
Traceback (most recent call last):
  File "<pyshell#47>", line 1, in <module>
    import chapterQuizWeek3
ModuleNotFoundError: No module named 'chapterQuizWeek3'
import chapter
chapter.chapter_one(hey)
Traceback (most recent call last):
  File "<pyshell#49>", line 1, in <module>
    chapter.chapter_one(hey)
NameError: name 'hey' is not defined. Did you mean: 'hex'?
chapter.chapter_one()
Traceback (most recent call last):
  File "<pyshell#50>", line 1, in <module>
    chapter.chapter_one()
TypeError: chapter_one() missing 1 required positional argument: 'name'
chapter.chapter_one(BOOM)
Traceback (most recent call last):
  File "<pyshell#51>", line 1, in <module>
    chapter.chapter_one(BOOM)
NameError: name 'BOOM' is not defined
chapter.chapter_one(BOOM)
Traceback (most recent call last):
  File "<pyshell#52>", line 1, in <module>
    chapter.chapter_one(BOOM)
NameError: name 'BOOM' is not defined
chapter.chapter_one('BOOM')
'BOOM'
chapter.chapter_one('BOOM')
'BOOM'
chapter.chapter_one('BOOt')
'BOOM'
import chapter
chapter.chapter_one('BOOt')
'BOOM'
chapter.chapter_one('Boots')
'BOOM'
not import chapter
SyntaxError: invalid syntax
chapter.chapter_one(BOOT)
Traceback (most recent call last):
  File "<pyshell#60>", line 1, in <module>
    chapter.chapter_one(BOOT)
NameError: name 'BOOT' is not defined
import chapter
print(traffic_report('yellow'))
Traceback (most recent call last):
  File "<pyshell#62>", line 1, in <module>
    print(traffic_report('yellow'))
NameError: name 'traffic_report' is not defined

= RESTART: /Users/sebastianq./Desktop/Cool Things/Coding/Python/Beginner/Week 2-3/chapter.py
print(traffic_report('yellow'))
slow
chapter.print(traffic_report('yellow'))
Traceback (most recent call last):
  File "<pyshell#64>", line 1, in <module>
    chapter.print(traffic_report('yellow'))
NameError: name 'chapter' is not defined
print(chapter.traffic_report('yellow'))
Traceback (most recent call last):
  File "<pyshell#65>", line 1, in <module>
    print(chapter.traffic_report('yellow'))
NameError: name 'chapter' is not defined
import chapter
print(chapter.traffic_report('yellow'))
slow
print(traffic_report('yellow'))
slow

= RESTART: /Users/sebastianq./Desktop/Cool Things/Coding/Python/Beginner/Week 2-3/chapter.py
chapter_one('hello')
'hello'
chapter_one(hello)
Traceback (most recent call last):
  File "<pyshell#70>", line 1, in <module>
    chapter_one(hello)
NameError: name 'hello' is not defined. Did you mean: 'help'?

= RESTART: /Users/sebastianq./Desktop/Cool Things/Coding/Python/Beginner/Week 2-3/chapter.py
chapter_one('hello')
'hello'
chapter_one(hello)
Traceback (most recent call last):
  File "<pyshell#72>", line 1, in <module>
    chapter_one(hello)
NameError: name 'hello' is not defined. Did you mean: 'help'?
chapter_one('hello')
'hello'
print(traffic_report('orange'))
None
import chapter
chapter.chapter_one('hello')
'hello'
