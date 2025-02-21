diccionario = {
"Perro":"Un animal pasivo y el mejor\namigo del hombre." ,
"Gato":"No es un animal muy pasivo\npero es fácil de domesticar." ,
"Lagarto":"Son animales grandes que quieren\ncomerte la mayoría del tiempo." ,
"Mamífero":"Una clase de animal donde los\ncríos son paridos de la mama, no como huevos." ,
"Azul":"El color primario conocido como el azul,\nligado con emociones neutras y buenas." ,
"Rojo":"El color primario conocido como el rojo,\nligado con emociones malas o amor."
    }

while True:
    input_word = input("Ingresa una palabra: ")
    if input_word in diccionario.keys():
        print(diccionario[input_word])
    else:
        print("Esa palabra no existe dentro del diccionario,\nuniliza initialize(diccionario) para volvar a usarlo")
        break

def initialize(diccionario):
    while True:
        input_word = input("Ingresa una palabra: ")
        if input_word in diccionario.keys():
            print(diccionario[input_word])
        else:
            print("Esa palabra no existe dentro del diccionario,\nuniliza initialize(diccionario) para volvar a usarlo")
            break
    return
