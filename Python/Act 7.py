import math

num1 = int(input('Ingresa el primer número: '))
num2 = int(input('Ingresa el segundo número: '))
num3 = int(input('Ingresa el tercer número: '))

if num1 >= num2 and num1 >= num3:
    print(num1)
elif num2 >= num1 and num2 >= num3:
    print(num2)
elif num3 >= num1 and num3 >= num2:
    print(num3)



x = int(input('Ingresa la medida del lado 1: '))
y = int(input('Ingresa la medida del lado 2: '))
z = int(input('Ingresa la medida del lado 3: '))

if x + y > z and y + z > x and x + z > y and x > 0 and y > 0 and z > 0:
    if x == y == z:
        print('ES UN TRIANGULO EQUILATERO')
    elif x == y or y == z or x == z:
        print('ES UN TRIANGULO ISOSCELES')
    else:
        print('ES UN TRIANGULO ESCALENO')
else:
    print('NO ES TRIANGULO')



edad = int(input('Ingresa tu edad: '))

if edad >= 18:
    iden = input('¿Tienes identificación oficial? (s/n): ')
    if iden == 's':
        print('Trámite de licencia concedido')
    elif iden == 'n':
        print('No cumples requisitos')
    else:
        print('Respuesta incorrecta')
elif edad < 18 and edad > 0:
        print('No cumples requisitos')
else:
    print('Respuesta incorrecta')



num = int(input('Dame un número: '))

if num > 0:
    print('Es positivo')
elif num < 0:
    print('Es negativo')
else:
    print('Es cero')