a = int(input('Valor a? '))

b = int(input('Valor b? '))

for i in range(b, a - 1, -1):
    # El parámetro 'end' le dice al print que acabe el print, con un espacio (' ') por ejemplo, en vez de una nueva línea.
    # Esto hace que se haga un print hacia el horizontal, y no vertical hacia abajo.
    print(i, end = ' ')

print('\n')

a = int(input('Valor a? '))

b = int(input('Valor b? '))

cadena = ''

for i in range(b, a - 1, -1):
    # Este es otro método que es un poco más complicado.
    cadena += str(i) + ' '

print(cadena)