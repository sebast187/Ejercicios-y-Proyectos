a = 0
c = 0

while True:
    b = int(input())
    a += b
    c += 1
    if a >= 1000:
        break
    
print('suma =',a)
print('cantidad de numeros =',c)