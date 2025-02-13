"""A board is a list of list of str. For example, the board
    ANTT
    XSOB
is represented as the list
    [['A', 'N', 'T', 'T'], ['X', 'S', 'O', 'B']]

A word list is a list of str. For example, the list of words
    ANT
    BOX
    SOB
    TO
is represented as the list
    ['ANT', 'BOX', 'SOB', 'TO']
"""


def is_valid_word(wordlist, word):
    """ (list of str, str) -> bool

    Return True if and only if word is an element of wordlist.

    >>> is_valid_word(['ANT', 'BOX', 'SOB', 'TO'], 'TO')
    True
    """
   
    i = 0
    while i < len(wordlist):
        return word in wordlist
        i = i + 1


def make_str_from_row(board, row_index):
    """ (list of list of str, int) -> str

    Return the characters from the row of the board with index row_index
    as a single string.

    >>> make_str_from_row([['A', 'N', 'T', 'T'], ['X', 'S', 'O', 'B']], 0)
    'ANTT'
    """

    word = ''
    i = row_index
    for char in board[i]:
        word = word + char
    return word


def make_str_from_column(board, column_index):
    """ (list of list of str, int) -> str

    Return the characters from the column of the board with index column_index
    as a single string.

    >>> make_str_from_column([['A', 'N', 'T', 'T'], ['X', 'S', 'O', 'B']], 1)
    'NS'
    """

    word = ''
    i = column_index
    for char in board:
        word =  word + (char[i])
    return word


def board_contains_word_in_row(board, word):
    """ (list of list of str, str) -> bool    Return True if and only if one or more of the rows of the board contains word.

    Precondition: board has at least one row and one column, and word is a valid word.

    >>> board_contains_word_in_row([['A', 'N', 'T', 'T'], ['X', 'S', 'O', 'B']], 'SOB')
    True
    """

    for row_index in range(len(board)):
        if word in make_str_from_row(board, row_index):
            return True

    return False


def board_contains_word_in_column(board, word):
    """ (list of list of str, str) -> bool

    Return True if and only if one or more of the columns of the board contains word.

    Precondition: board has at least one row and one column, and word is a valid word.

    >>> board_contains_word_in_column([['A', 'N', 'T', 'T'], ['X', 'S', 'O', 'B']], 'NO')
    False
    """

    i = 0
    while i < len(board[0]):
        if word in make_str_from_column(board, i):
            return True
        i = i + 1
       
    return False


def board_contains_word(board, word):
    """ (list of list of str, str) -> bool

    Return True if and only if word appears in board.

    Precondition: board has at least one row and one column.

    >>> board_contains_word([['A', 'N', 'T', 'T'], ['X', 'S', 'O', 'B']], 'ANT')
    True
    """

    a = board_contains_word_in_row(board, word)
    b = board_contains_word_in_column(board, word)
    if a or b:
        return True
    return False


def word_score(word):
    """ (str) -> int

    Return the point value the word earns.

    Word length: < 3: 0 points                 3-6: 1 point per character for all characters in word
                 7-9: 2 points per character for all characters in word
                 10+: 3 points per character for all characters in word

    >>> word_score('DRUDGERY')
    16
    """

    score = len(word)
    if score < 3:
        return score*0
    elif score >=3 and score <=6:
        return score*1
    elif score >=7 and score <=9:
        return score*2
    elif score >=10:
        return score*3
    return score


def update_score(player_info, word):
    """ ([str, int] list, str) -> NoneType

    player_info is a list with the player's name and score. Update player_info
    by adding the point value word earns to the player's score.

    >>> update_score(['Jonathan', 4], 'ANT')
    """

    current_point = player_info.pop(1)
    point = current_point + word_score(word)
    player_info.append(point)
   

def num_words_on_board(board, words):
    """ (list of list of str, list of str) -> int

    Return how many words appear on board.

    >>> num_words_on_board([['A', 'N', 'T', 'T'], ['X', 'S', 'O', 'B']], ['ANT', 'BOX', 'SOB', 'TO'])
    3
    """

    count = 0
    for word in words:
        if board_contains_word(board, word):
            count = count + 1
    return count


def read_words(words_file):
    """ (file open for reading) -> list of str

    Return a list of all words (with newlines removed) from open file
    words_file.

    Precondition: Each line of the file contains a word in uppercase characters
    from the standard English alphabet.
    """

    lists = []
   
   
   
    for line in words_file:
        word = ''

        for char in line:
           
            if char != '\n':
                word = word + char

        lists.append(word)

    return lists


def read_board(board_file):
    """ (file open for reading) -> list of list of str

    Return a board read from open file board_file. The board file will contain
    one row of the board per line. Newlines are not included in the board.
    """

    lists = []
         
    for line in board_file:
       
        #Append characters into sublist
        sub = []
        for char in line:
           
            if char != '\n':
                sub.append(char)

        if sub != []:
            lists. append(sub)

    return lists
