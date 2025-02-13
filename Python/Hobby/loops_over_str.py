def collect_vowels(s):
    ''' (str) -> str

    Return the vowels from s. Do not treat the letter
    y as a vowel.

    >>> collect_vowels('Happy Anniversary!')
    'aAiea'
    >>> collect_vowels('xyz')
    ''
    '''

    vowels = ''

    for char in s:
        if char in 'aeiouAEIOU':
            vowels = vowels + char

    return vowels

def count_vowels(s):
    ''' (str) -> int

    Return the number of vowels in s. Do not treat the
    letter y as a vowel.

    >>> count_vowels('Happy Anniversary!')
    5
    >>> count_vowels('xyz')
    0
    '''

    num_vowels = 0

    for char in s:
        if char in 'aeiouAEIOU':
            num_vowels = num_vowels + 1

    return num_vowels

def has_vowel(s):
    '''(str) -> bool

    Return True if and only if s has at least one vowel,
    not including y.

    >>> has_vowel("Anniversary")
    True
    >>> has_vowel("xyz")
    False
    '''
    
    vowel_found = False
    
    for char in s:
        if char in 'aeiouAEIOU':  
            vowel_found = True

    return vowel_found
