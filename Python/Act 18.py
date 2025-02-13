row = int(input())
column = int(input())
lists = []
matrix = []
result = []

if column >= 1 and row >= 1:
    for i in range(row):
        for i in range(column):
            val = int(input())
            lists.append(val)
        matrix.append(lists)
        lists = []
    
    for j in range(len(matrix)):
        for m in range(len(matrix[j])):
            if matrix[j][m] < 10:
                result.append(matrix[j][m])
    print (result)
    
else:
    print (matrix)



row = int(input())
column = int(input())
lists = []
matrix = []
result = []

if column >= 1 and row >= 1:
    for i in range(row):
        for i in range(column):
            val = int(input())
            lists.append(val)
        matrix.append(lists)
        lists = []
    
    m = 0
    i = 0
    vals = 0
    for l in range(len(matrix[m])):
        for j in range(len(matrix)):
            vals += matrix[j][i]
        result.append(vals)
        vals = 0
        i += 1
        if i == len(matrix[m]):
            break
        
    print(result)
else:
    print('Error')