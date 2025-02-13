n = int(input('ingresa un numero'))
m = 1

while m <= n:
    if m % 2 == 0:
        print(str(m) + '-%')
    else:
        print(str(m) + '-#')
    m += 1



a = int(input())
b = int(input())

while b >= a:
    if a % 2 == 0:
        print (a)
    a += 1



e = 0

while True:
    d = int(input())
    if d % 2 == 0 and d >= 0:
        e += 1
    if d < 0:
        break

e = str(e)
print('Total de pares=' + e)



a = 0
b = 0
c = 0

while a >= 0:
    a = float(input())
    if a >= 0:
        b += a
        c += 1
    
print(b/c)