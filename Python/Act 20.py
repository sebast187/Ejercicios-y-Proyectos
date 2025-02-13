alumDir = open("Archivos/Alumnos.txt","a")
num = int(input('Teclea cantidad de alumnos que quieras agregar:'))

for i in range(num):
    name = input('name:')
    edad = input('edad:')
    carrera = input('Carrera:')
    
    string = '\n{0},{1},{2}'
    string = string.format(name, edad, carrera)
    alumDir.write(string)
    
alumDir.close()