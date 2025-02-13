def main():
    val = input()
    cont3 = 0
    cont4 = 0

    while val != '*':
        if int(val) % 3 == 0:
            cont3 += 1
        # No es un 'elif' para también contar el num. si es multiplo de 3 y 4.
        if int(val) % 4 == 0:
            cont4 += 1
        val = input()

    return print('MULTIPLOS3=' + str(cont3) + '\nMULTIPLOS4=' + str(cont4))

main()