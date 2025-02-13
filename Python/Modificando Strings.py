def authorizationAndInputsFormatting():
    name = input('Enter your name:\n')
    age = int(input('\nEnter your age:\n'))
    access1 = 'authorized'
    access2 = 'too young'
    welcomeMessage = 'Welcome \'{0}\',\nYou are {1} to enter the mainframe'

    if age >= 18:
        return welcomeMessage.format(name, access1)
    else:
        return welcomeMessage.format(name, access2)

def formatingAndCapitalization():
    price1 = 25.99
    currency1 = 'dollars'
    price2 = 5199.99
    currency2 = 'pesos'
    item = 'dumbell'

    sentence1 = 'the {0} is worth {1} {2}'
    sentence2 = sentence1.capitalize()

    print(sentence2.format(item, price1, currency1))
    
def stringEnReversa():
    entrada = input()
    salida = ''
    
    for i in entrada:
        salida = i + salida
    salida = salida.lower()
    salida = salida.capitalize()
    
    return salida

def stringAReversa():
    entrada = input()
    salida = ''
    
    for i in entrada:
        salida = i + salida
    salida = salida.upper()
    
    return salida

print(authorizationAndInputsFormatting())