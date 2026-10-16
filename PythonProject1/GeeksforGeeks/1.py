def check_even_odd(n):
    # Use Python's ternary operator
    result="Even" if n%2==0 else "Odd"

if __name__ == '__main__':
    n = int(input().strip())
    check_even_odd(n)