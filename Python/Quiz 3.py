p = 0
a = str
aa = 120
bb = 250
cc = 360

while a != 'X':
    a = input('Teclea la clave ')
    if a == 'A':
        p += 120
        print(aa)
    elif a == 'B':
        p += 250
        print(bb)
    elif a == 'C':
        p += 360
        print(cc)

print(p)



m = 1
l = 0

while m != 0:
    m = int(input())
    l += m

print(l)



n = int(input())
i = 0

while i < n:
    i += 1
    print (i)