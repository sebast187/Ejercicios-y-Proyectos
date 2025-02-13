def chapter_one(name):
    ''' (str) -> str
    
    Return the name of the chapter.

    >>> chapter_one(BOOM)
    BOOM
    '''
    return name

def traffic_report(light):
    if light == 'red':
        return 'stop'
    elif light == 'yellow':
        return 'slow'
    elif light == 'green':
        return 'go'
