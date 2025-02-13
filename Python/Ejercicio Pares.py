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