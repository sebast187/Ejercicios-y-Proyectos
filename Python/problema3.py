import math

def main():
    vol_cilindro(float(input('Ingrese el radio: ')), float(input('Ingrese la altura: ')))

def area_circulo(r):
    a = (r ** 2) * math.pi
    return a

def vol_cilindro(r, h):
    a = area_circulo(r)
    vol = a * h
    return print(vol)

main()