import random

def equivalente():
    horas = int(input('Horas: '))
    min = int(input('Minutos: '))
    seg = int(input('Segundos: '))
    tiempo = horas * 3600 + min * 60 + seg
    return print(tiempo)

equivalente()
equivalente()


def randomint():
    min = int(input('From: '))
    max = int(input('To: '))
    rand = random.randint(min, max)
    return print(rand)

randomint()
randomint()