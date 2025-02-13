num = int(input('Dame un número: '))

if num >= 1000 and num <= 9999:
    num = list(str(num))
    par1 = int(num[0]) % 2
    par2 = int(num[1]) % 2
    par3 = int(num[2]) % 2
    par4 = int(num[3]) % 2
    num_par = 0
    if par1 == 0:
        num_par += 1
    if par2 == 0:
        num_par += 1
    if par3 == 0:
        num_par += 1
    if par4 == 0:
        num_par += 1
    print('El número de dígitos pares es:', num_par)
    
else:
    print('Error\nTiene que ser de 4 digitos')



mensajes = int(input('Dame el número de mensajes: '))
megas = float(input('Dame el número de megas: '))
minutos = int(input('Dame el número de minutos: '))

costo = (mensajes + megas + minutos) * 0.8
print('El costo mensual es:', costo, 2)