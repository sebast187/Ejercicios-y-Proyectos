def precio_valido (precio):
    if precio > 0:
        return print ("Válido")
    else:
        return print ("No es válido")

def velocidad_promedio (km, hr):
    v = km / hr
    return print (v)

def conversion_pies (m):
    ft = ((m * 100) / 2.54) / 12
    return print (ft)

def lic_conducir (edad, iden):
    if edad >= 18 and (iden == 'si' or iden == 'Si'):
        return print ("Puedes obtener tu licencia de conducir")
    else:
        return print ("Requisitos no cumplidos")

valido = precio_valido(float(input('Precio: ')))
velocidad = velocidad_promedio(float(input('Distancia (km): ')), float(input('Tiempo (hr): ')))
pies = conversion_pies(float(input('Distancia en metros: ')))
conducir = lic_conducir(float(input('Edad: ')), input('Tiene identificación? '))