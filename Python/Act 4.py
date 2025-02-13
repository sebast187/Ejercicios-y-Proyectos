import math

varphi = (1 + math.sqrt(5)) / 2

num = float(input('Número: '))
decimal = int(input('Decimales a mostrar: '))

aurea = num * varphi
print ('Razón áurea:', round(aurea, decimal))



x1 = float(input('x1= '))
y1 = float(input('y1= '))
x2 = float(input('x2= '))
y2 = float(input('y2= '))

d = math.sqrt(((x2 - x1)**2)+((y2 - y1)**2))
print('distancia=', round(d, 2))



a = 4
b = 5

oper1 = 2 * (3/4) + 4 * (2/3) - 3 * (1/5) + 5 * (1/2)

oper2 = 2 * math.sqrt(35 ** 2) + 4 * math.sqrt(36 ** 3) - 6 * math.sqrt(49 ** 2)

oper3 = (a ** 3 + 2 * b ** 2) / (4 * a)

oper4 = ((2 * (a + b) ** 2) + (4 * (a - b) ** 2)) / (a * (b ** 2))

oper5 = math.sqrt(((a + b) ** 2 + 2 ** (a + b))) / (2 * a + 2 * b) ** 2

print(round(oper1, 4))
print(oper2)
print(oper3)
print(round(oper4, 2))
print(round(oper5, 4))



x1 = float(input('Dame x1: '))
y1 = float(input('Dame y1: '))
x2 = float(input('Dame x2: '))
y2 = float(input('Dame y2: '))

m = (y2 - y1)/(x2 - x1)

print('Pendiente:', m)