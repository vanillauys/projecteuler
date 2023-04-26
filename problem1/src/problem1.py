def multiples() -> int:
    sum: int = 0
    for i in range(3, 1000):
        if ((i % 3) == 0):
            sum += i
        elif ((i % 5) == 0):
            sum += i
    return sum


def main():
    number: int = multiples()    
    print(number)


if __name__ == '__main__':
    main()
