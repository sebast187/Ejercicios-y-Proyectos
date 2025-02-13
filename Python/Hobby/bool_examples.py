def is_even(num):
    ''' (int) -> bool

    Return whether num is even.

    >>> is_even(4)
    True
    >>> is_even(77)
    False
    '''

    return num % 2 == 0
##    if num % 2 == 0:
##        return True
##    else:
##        return False

def inhospitable_weather(temp):
    ''' (number) -> bool

    Return True if and only if the
    given temperature in degrees
    Celsius is unpleasant (too hot
    or too cold).

    >>> inhospitable_weather(20)
    False
    >>> inhospitable_weather(7.5)
    True
    '''

    return temp > 28 or temp < 12
##    if temp > 28:
##        return True
##    elif temp < 12:
##        return True
##    else:
##        return False
