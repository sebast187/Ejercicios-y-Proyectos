import math





y = int(input("Año: "))
m = int(input("Mes: "))
d = int(input("Día: "))

if y % 4 == 0:
    if y % 100 == 0:
        if y % 400 == 0:
            if m == 2:
                d += 1
                if d > 29:
                    d = 1
                    m += 1
                print(y)
                print(m)
                print(d)
            elif (m >= 8 and m % 2 == 0) or ((m >= 1 and m <= 7) and m % 2 == 1):
                d += 1
                if d > 31:
                    d = 1
                    m += 1
                    if m > 12:
                        m = 1
                        y += 1
                print(y)
                print(m)
                print(d)
            else:
                d += 1
                if d > 30:
                    d = 1
                    m += 1
                    if m > 12:
                        m = 1
                        y += 1
                print(y)
                print(m)
                print(d)
    if y % 100 != 0:
        if m == 2:
            d += 1
            if d > 29:
                d = 1
                m += 1
            print(y)
            print(m)
            print(d)
        elif (m >= 8 and m % 2 == 0) or ((m >= 1 and m <= 7) and m % 2 == 1):
            d += 1
            if d > 31:
                d = 1
                m += 1
                if m > 12:
                    m = 1
                    y += 1
            print(y)
            print(m)
            print(d)
        else:
            d += 1
            if d > 30:
                d = 1
                m += 1
                if m > 12:
                    m = 1
                    y += 1
            print(y)
            print(m)
            print(d)
else:
    if m == 2:
        d += 1
        if d > 28:
            d = 1
            m += 1
        print(y)
        print(m)
        print(d)
    elif (m >= 8 and m % 2 == 0) or ((m >= 1 and m <= 7) and m % 2 == 1):
        d += 1
        if d > 31:
            d = 1
            m += 1
            if m > 12:
                m = 1
                y += 1
        print(y)
        print(m)
        print(d)
    else:
        d += 1
        if d > 30:
            d = 1
            m += 1
            if m > 12:
                m = 1
                y += 1
        print(y)
        print(m)
        print(d)




x = int(input("Ingresa el primer número: "))
y = int(input("Ingresa el segundo número: "))
z = int(input("Ingresa el tercer número: "))

if x <= y and x <= z:
    print(x)
    if y <= z:
        print (y)
        print (z)
    elif z <= y:
        print (z)
        print (y)
elif y <= x and y <= z:
    print(y)
    if x <= z:
        print (x)
        print (z)
    elif z <= x:
        print (z)
        print (x)
elif z <= y and z <= x:
    print(z)
    if y <= x:
        print (y)
        print (x)
    elif x <= y:
        print (x)
        print (y)