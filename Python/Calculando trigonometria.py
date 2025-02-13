import math
angulo_grados = 30
hipotenusa = float(input('Hipotenusa: '))
angulo_radianes = math.radians(angulo_grados)
cateto_opuesto = math.sin(angulo_radianes) * hipotenusa
print('Cateto opuesto:', round(cateto_opuesto))