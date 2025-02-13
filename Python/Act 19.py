string_in = input()
string_out = ''

if len(string_in) >= 2:
    for i in range(0,2,1):
        string_out += string_in[i]
    for i in range(-2,0,1):
        string_out += string_in[i]
    print(string_out)
else:
    print(string_out)



word1 = input()
word2 = input()
out1 = ''
out2 = ''
l = 0

for i in word1:
    if l < len(word1) // 2:
        out1 += i
    else:
        out2 += i
    l += 1

l = 0
for i in word2:
    if l <= len(word2) // 2:
        out2 += i
    else:
        out1 += i
    l += 1

print(out1)
print(out2)