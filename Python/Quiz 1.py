import math

vmm = 5.7
vcm = (vmm * 60) / 10
minut = float(input('Dame los minutos: '))

cm = vcm * minut

print('Centímentros recorridos:', round(cm, 1))



inicial = float(input('Dame el peso inicial: '))
final = float(input('Dame el peso final: '))
meses = int(input('Dame la cantidad de meses: '))

bajar = (inicial - final)/meses

print ('Lo que debes bajar por mes es:', bajar)



nacer = int(input('Dame el año de nacimiento: '))
actual = int(input('Dame el año actual: '))

lustros = (actual - nacer)/5

print ('Los lustros que has vivido son:', lustros)