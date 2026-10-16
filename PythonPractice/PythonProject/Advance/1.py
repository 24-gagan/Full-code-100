def divisible_by_2_or_3(n):
    # Implement boolean logic
    if n%3==0 and n%2==0:
        return n

if __name__ == '__main__':
    n = int(input().strip())
    print(divisible_by_2_or_3(n))