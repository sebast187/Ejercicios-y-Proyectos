def oraciones(cadena):
    puntos = 0
    for i in cadena:
        if i == '.':
            puntos += 1
    return puntos
    
def main():
    parrafo = input('Dame un párrafo: ')
    print('Número de oraciones terminadas por un punto:', oraciones(parrafo))

main()



def calcula_grado(grado):
    if grado > 0.9:
        return 'A'
    elif grado > 0.8:
        return 'B'
    elif grado > 0.7:
        return 'C'
    elif grado > 0.6:
        return 'D'
    else:
        return 'F'

def main():
    valor = float(input('Ingresa Un valor entre 0.0 y 1.0: '))
    if valor >= 0 and valor <= 1:
        print(calcula_grado(valor))
        
    else:
        print('score incorrecto')

main()



def pies_cm(pies):
    cm = pies * 30.48
    return cm
    
def pulgadas_cm(pulgadas):
    cm = pulgadas * 2.54
    return cm
    
def yardas_cm(yardas):
    cm = yardas * 91.44
    return cm

def main():
    print('1. pies a cm, 2. pulgadas a cm, 3. yardas a cm')
    opcion = int(input('Introduce una opcion: '))
    cantidad = int(input('Introduce la cantidad: '))
    if opcion >= 1 and opcion <= 3 and cantidad >= 0:
        if opcion == 1:
            print(pies_cm(cantidad))
            
        elif opcion == 2:
            print(pulgadas_cm(cantidad))
            
        else:
            print(yardas_cm(cantidad))
        
    else:
        print('Error')

main()