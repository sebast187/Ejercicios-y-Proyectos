def area(base,altura):
    area1 = base * altura
    return print('El área del rectángulo es:', area1)

area(float(input('Dame la base: ')), float(input('Dame la altura: ')))



def tarjetas(pliegos,plumones):
    tarjetas1 = (pliegos * 12)
    tarjetas2 = (plumones * 35)
    if tarjetas1 <= tarjetas2:
        return print('El número máximo de tarjetas que se pueden hacer es:', tarjetas1)
    else:
        return print('El número máximo de tarjetas que se pueden hacer es:', tarjetas2)

tarjetas(int(input('Dame la cantidad de pliegos de papel albanene: ')), int(input('Dame la cantidad de plumones: ')))



def area(base, altura):
    area1 = base * altura
    return area1

def volumen_prisma(base, altura, profundidad):
    area2 = area(base, altura)
    volumen = area2 * profundidad
    return print('El volumen del prisma es:', volumen)
    
volumen_prisma(float(input('Dame la base: ')), float(input('Dame la altura: ')), float(input('Dame la profundidad: ')))