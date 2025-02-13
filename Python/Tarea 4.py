numero = int(input('Escribe un numero entero : '))

if numero >= 2:
    count = 0
    for i in range(2, numero):
        if numero % i == 0:
            count += 1
    if count != 0:
        print(False)
    else:
        print(True)
else:
    print(False)



val1 = int(input("Valor 1: "))
val2 = int(input("Valor 2: "))

if val2 < val1:
    val3 = val2
    val2 = val1
    val1 = val3
if val2 == val1:
    print('No hay pares')
else:
    for i in range(val1, val2 + 1):
        if i % 2 == 0:
            print(i)



num1 = int(input("Escribe un numero entero no negativo para calcular su factorial: "))
num2 = num1

if num1 >= 0:
    if num1 == 0 or num1 == 1:
        print(1)
    else:
        while num2 > 1:
            num2 -= 1
            num1 *= num2
        print(num1)
else:
    print('Factorial no definido para negativos')



num = int(input("Escribe un numero : "))
i = 1

while True:
    if i ** 2 > num:
        break
    else:
        i += 1

print(i)



num = str(abs(int(input("Escribe un numero entero: "))))
suma = 0

for digito in num:
    suma += int(digito)

print(suma)