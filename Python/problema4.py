def main():
    num = int(input('Escribe un número entero: '))
    print(valida_primo_for(num))
    print(valida_primo_while(num))

def valida_primo_for(numero):
    if numero >= 2:
        count = 0
        for i in range(2, numero):
            if numero % i == 0:
                count += 1
        if count != 0:
            return False
        else:
            return True
    else:
        return False

def valida_primo_while(numero):
    if numero >= 2:
        count = 0
        i = 2
        while i < numero:
            if numero % i == 0:
                count += 1
            i += 1
        if count != 0:
            return False
        else:
            return True
    else:
        return False

main()