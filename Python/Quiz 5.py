ren = int(input())
col = int(input())
lista = []
mat = []
val = 0

if ren >= 2 and col >= 2:
    for i in range(ren):
        for i in range(col):
            val += 1
            lista.append(val)
        mat.append(lista)
        lista = []
    print(mat)
    
else:
    print('Error')



val = input()
matriz = []
list1 = []

while val != '*':
    val = int(val)
    list1.append(val)
    val = input()

val = input()
list2 = []

while val != '*':
    val = int(val)
    list2.append(val)
    val = input()

list = list1 + list2
list.sort()
print('L1=')
print(list1)
print('L2=')
print(list2)
print('LORDENADA=')
print(list)