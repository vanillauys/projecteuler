def even_fibonacci(n: int) -> int:
    total_evens = 0
    current_fib = 1
    prev_fib = 0

    while current_fib < n:
        is_even = int(current_fib % 2 == 0)
        total_evens += is_even * current_fib
        temp_fib = current_fib
        current_fib += prev_fib
        prev_fib = temp_fib

    return total_evens