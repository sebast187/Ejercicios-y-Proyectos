import math

# 4
levadura = float(input('Dame la harina en gramos: ')) / 20

print('Necesitas estos gramos de levadura:', levadura)


# 3
saldo = float(input('Dame el saldo del mes anterior: '))
ing = float(input('Dame los ingresos: '))
eg = float(input('Dame los egresos: '))
num_cheques = int(input('Dame el número de cheques: ')) * 13

sal_final = (saldo + ing - eg - num_cheques) * 0.925

print('El saldo final de la cuenta es:', sal_final)


# 2
altura = float(input('Altura de la casa: '))
angulo = math.radians(int(input('Angulo en grados: ')))

largo = altura / math.sin(angulo)

print('Largo de la escalera:', round(largo))


# 1
area = float(input('Area a pintar en metros: '))
rend = float(input('Rendimiento (m2/l): '))

litros = area/rend

print ('Litros a comprar:', round(litros))