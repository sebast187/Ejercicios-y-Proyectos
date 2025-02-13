def generaMatriz (renglon, columna):
    lists = []
    matrix = []
    if columna >= 1 and renglon >= 1:
        for i in range(renglon):
            for i in range(columna):
                val = int(input())
                lists.append(val)
            matrix.append(lists)
            lists = []
        return sumaColumnas(matrix)
    else:
        return print('Error')

def sumaColumnas (matriz):
    m = 0
    i = 0
    vals = 0
    result = []
    for l in range(len(matriz[m])):
        for j in range(len(matriz)):
            vals += matriz[j][i]
        result.append(vals)
        vals = 0
        i += 1
        if i == len(matriz[m]):
            break
        
    return print(result)


def main():
    row = int(input())
    column = int(input())
    return generaMatriz(row, column)

main()



def matParesCol (matriz):
    numPar = 0
    listaFin = []
    for i in range(len(matriz)):
        for j in range(len(matriz[i])):
            if matriz[i][j] % 2 == 0:
                numPar += 1
        listaFin.append(numPar)
        numPar = 0
    return print(listaFin)
    
def leer (ren, col):
    lista = []
    matriz = []
    for i in range(ren):
        for i in range(col):
            val = int(input())
            lista.append(val)
            
        matriz.append(lista)
        lista = []
    return matParesCol(matriz)

def main():
    ren = int(input())
    col = int(input())
    return leer(ren, col)

main()



def determinante(matriz):
    det = (int(matriz[0][0]) * int(matriz[1][1])) - (int(matriz[0][1]) * int(matriz[1][0]))
    return det
    
def main():
    val1 = input()
    val2 = input()
    list1 = val1.split()
    list2 = val2.split()
    matrix = []
    
    if len(list1) == 2 and len(list2) == 2:
        matrix.append(list1)
        matrix.append(list2)
        return print(determinante(matrix))
    else:
        return print('La matriz no es una matriz de 2x2')
 
main()