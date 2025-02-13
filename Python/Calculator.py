import math
def calculator ():
    what = input('[x] : multiplication (multiplicand, multiplier)\n\n[/] : division (dividend, divisor)\n\n[+] : addition (addend, addend)\n\n[-] : substraction (minuend, subtrahend)\n\n[%] : remainder (dividend, divisor)\n\n[*] : exponent (base, exponent, radical)\n\n\nSelect mode: ')
    if what == 'x':
        mply1 = float(input('Multiplicand: '))
        mply2 = float(input('Multiplier: '))
        print (mply1 * mply2)
    elif what == '/':
        div1 = float(input('Dividend: '))
        div2 = float(input('Divisor: '))
        print (div1 / div2)
    elif what == '+':
        add1 = float(input('Addend 1: '))
        add2 = float(input('Addend 2: '))
        print (add1 + add2)
    elif what == '-':
        sub1 = float(input('Minuend: '))
        sub2 = float(input('Subtrahend: '))
        print (sub1 - sub2)
    elif what == '%':
        rem1 = float(input('Dividend: '))
        rem2 = float(input('Divisor: '))
        print (rem1 % rem2)
    elif what == '*':
        exp1 = float(input('Base: '))
        exp2 = float(input('Exponent: '))
        exp3 = float(input('Radical (Input 1 for exponent): '))
        print (exp1 ** (exp2/exp3))
    else:
        print ('Error')