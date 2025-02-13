def puntos(oracion):
    cont_p = 0
    for i in oracion:
        if i == '.':
            cont_p += 1
    return cont_p

def main():
    oracion_input = input('Dame un párrafo: ')
    return print('Número de oraciones terminadas por un punto:', puntos(oracion_input))

main()