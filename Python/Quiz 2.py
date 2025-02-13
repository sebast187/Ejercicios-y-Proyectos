def converter():
    print('1. pies a cm, 2. pulgadas a cm, 3. yardas a cm')
    accion = int(input('Introduce una opcion: '))
    valor = int(input('Introduce la cantidad: '))
    if accion == 1:
        valor *= 30.48
        return print(valor)
    elif accion == 2:
        valor *= 2.54
        return print(valor)
    elif accion == 3:
        valor *= 91.44
        return print(valor)
    else:
        return print('Error')
    
def grado():
    grado = float(input('Ingresa Un valor entre 0.0 y 1.0: '))
    if grado > .90 and grado <= 1:
        return print('A')
    elif grado > .80 and grado <= .90:
        return print('B')
    elif grado > .70 and grado <= .80:
        return print('C')
    elif grado > .60 and grado <= .70:
        return print('D')
    elif grado <= .60 and grado >= 0:
        return print('F')
    else:
        return print('score incorrecto')

grado()
    
converter()