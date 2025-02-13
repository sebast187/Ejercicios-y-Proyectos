num = int(input())
x = 0
y = 1
fib = list()

while True:
    if num == 0:
        break
    if num > 0:
        fib.append(x)
        if num > 1:
            fib.append(y)
            while len(fib) < num:
                if len(fib) < num:
                    x += y
                    fib.append(x)
                    if len(fib) < num:
                        y += x
                        fib.append(y)
        break
    else:
        num = int(input())

print(fib)



cantidad = int(input())
lista = list()
lista2 = list()
i = 1

if cantidad >= 1:
    while i <= cantidad:
        a = input()
        lista.append(a)
        lista2.append(a)
        i += 1
    for n in range(len(lista)):
        i = 0
        while i < len(lista):
            if i != n:
                if n < len(lista) and i < len(lista):
                    if lista[i] == lista[n]:
                        lista.pop(i)
            i += 1
    print(lista2)
    print(lista)

else:
    print('Error')



cantidad = int(input())
i = 1
pos = list()

while i <= cantidad:
    val = int(input())
    pos.append(val)
    i += 1

for n in range(len(pos)):
    if pos[n] % 2 == 0:
        print('pos', str(n) + ', valor', pos[n])



pares = list()
impares = list()

while True:
    valores = input()
    if valores == '*':
        break
    valores = int(valores)
    if valores % 2 == 0:
        pares.append(valores)
    else:
        impares.append(valores)

print('PARES')
print(pares)

print('IMPARES')
print(impares)