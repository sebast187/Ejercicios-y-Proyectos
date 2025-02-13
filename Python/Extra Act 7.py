x = int(input('Ingresa el primer lado del triangulo: '))
y = int(input('Ingresa el segundo lado del triangulo: '))
z = int(input('Ingresa el tercer lado del triangulo: '))

if x + y > z and y + z > x and x + z > y and x > 0 and y > 0 and z > 0:
    if x == y == z:
        print('Triángulo Equilátero')
    elif x == y or y == z or x == z:
        print('Triángulo Isóceles')
    else:
        print('Triángulo Escaleno')
else:
    print('Los lados ingresados no corresponden a un triángulo')



numero = int(input('El número: '))

if numero >= 0:
    if numero % 2 == 0:
        print('Par positivo')
    else:
        print('Impar positivo')
else:
    if numero % 2 == 0:
        print('Par negativo')
    else:
        print('Impar negativo')