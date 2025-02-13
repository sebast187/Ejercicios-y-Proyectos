import math

a = int(input('Da el valor de a: '))
b = int(input('Da el valor de b: '))
c = int(input('Da el valor de c: '))

if a == 0 and b == 0:
    print('No tiene solución')
elif a == 0 and b != 0:
    x = -c / b
    print(x)
elif a != 0 and b != 0:
    x = b ** 2 - 4 * a * c
    if x < 0:
        print('Raíces complejas')
    elif x > 0:
        pos_x = (-b + math.sqrt(x)) / (2 * a)
        neg_x = (-b - math.sqrt(x)) / (2 * a)
        print(pos_x)
        print(neg_x)
    else:
        x = -b / (2 * a)
        print(x)