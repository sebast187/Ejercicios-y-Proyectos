def hailstone_sequence(val):
    nums = str(val)
    if val > 0:
        if val != 1:
            nums += ' '
            while val != 1:
                if val % 2 == 0:
                    val = val // 2
                    if val != 1:
                        nums += str(val) + ' '
                else:
                    val = (val * 3) + 1
                    if val != 1:
                        nums += str(val) + ' '
            nums += str(val)
            return nums
        else:
            return nums
    else:
        return 'Invalid input'

def main():
    valor = int(input('Enter a number: '))
    return print(hailstone_sequence(valor))

main()