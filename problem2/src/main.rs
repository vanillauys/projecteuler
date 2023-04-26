#[macro_use]
extern crate timeit;


fn main() {
    timeit!({
        even_fibonacci(100_000_000);
    });
}

fn even_fibonacci(n: u32) -> u32 {
    let mut total_evens: u32 = 0;
    let mut current_fib: u32 = 1;
    let mut prev_fib: u32 = 0;
    let mut temp_fib: u32;
    let mut is_even: u32;

    while current_fib < n {
        is_even = (current_fib % 2 == 0) as u32;
        total_evens += is_even * current_fib;
        temp_fib = current_fib;
        current_fib += prev_fib;
        prev_fib = temp_fib;
    }

    return total_evens;
}
