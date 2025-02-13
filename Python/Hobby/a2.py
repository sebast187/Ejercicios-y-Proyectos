def get_length(dna):
    ''' (str) -> int
    Return the length of the DNA sequence dna.
    >>> get_length('ATCGAT')
    6
    >>> get_length('ATCG')
    4
    '''

    return len(dna)

def is_longer(dna1, dna2):
    ''' (str, str) -> bool
    Return True if and only if DNA sequence dna1 is longer than DNA sequence
    dna2.
    >>> is_longer('ATCG', 'AT')
    True
    >>> is_longer('ATCG', 'ATCGGA')
    False
    '''
    return dna1 > dna2

def count_nucleotides(dna, nucleotide):
    ''' (str, str) -> int
    Return the number of occurrences of nucleotide in the DNA sequence dna.
    >>> count_nucleotides('ATCGGC', 'G')
    2
    >>> count_nucleotides('ATCTA', 'G')
    0
    '''
    return dna.count(nucleotide)

def contains_sequence(dna1, dna2):
    ''' (str, str) -> bool
    Return True if and only if DNA sequence dna2 occurs in the DNA sequence
    dna1.
    >>> contains_sequence('ATCGGC', 'GG')
    True
    >>> contains_sequence('ATCGGC', 'GT')
    False
    
    '''
    return dna2 in dna1

def is_valid_sequence(dna):
    '''(str) -> bool
    Return true if and only if the DNA sequence is valid. The sequence must
    only contain the characters 'A', 'T', 'C', and 'G'. Lower case characters
    are not valid.
    >>> is_valid_sequence('ATCG')
    True
    >>> is_valid_sequence('AAGCTT')
    True
    >>> is_valid_sequence('ATcG')
    False
    >>> is_valid_sequence('CTGAX')
    False
    '''
    
    num_nucleotides = True
    
    for char in dna:
        if char in 'BDEFHIJKLMNOPQRSUVWXYZabcdefghijklmnopqrstuvwxyz':
            num_nucleotides = False
            
    return num_nucleotides


def insert_sequence(dna1, dna2, num):
    '''(str, str, int) -> str
     Return the DNA sequence obtained by inserting dna2 into dna1 at the
     given index of num.
    >>> insert_sequence('CCGG', 'AT', 2)
    'CCATGG'
    >>> insert_sequence('ATCTAGCC', 'CAT', 5)
    'ATCTACATGCC'
    >>>insert_sequence('ATGGC', 'TA', 1)
    'ATATGGC'
    '''
    
    return dna1[:num] + dna2 + dna1[num:]


def get_complement(nucleotide):
    '''(str) -> str
    Return the nucletides complement.
    Precondition A complements T, C compliments G
    >>> get_complement('A')
    'T'
    >>> get_complement('C')
    'G'
    >>> get_complement('T')
    'A'
    '''

    if nucleotide == 'A':
       return 'T'
    elif nucleotide == 'T':
        return 'A'
    elif nucleotide == 'C':
        return 'G'
    elif nucleotide == 'G':
        return 'C'

def get_complementary_sequence(dna):

    '''(str) -> str
    Return the DNA sequence that is complimentary to the given
    DNA sequence.
    Precondition A complements T, C complements G
    >>> get_complementary_sequence('AT')
    'TA'
    >>> get_complementary_sequence('TAGC')
    'ATCG'
    >>> get_complementary_sequence('ATCGA')
    'TAGCT'
    '''
    dna_complement = ''
    
    for char in dna:
        if char in 'ATCG':
            dna_complement = dna_complement + get_complement(char)
    return dna_complement
