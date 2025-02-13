import math

a = float(input('Lado a: '))
b = float(input('Lado b: '))
c = float(input('Lado c: '))

s = (a + b + c) / 2

area = math.sqrt(s * (s - a) * (s - b) * (s - c))
print ('Área del Triángulo:', area)