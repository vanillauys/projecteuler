#[macro_use]
extern crate timeit;

fn main() {
    timeit!({
        multiples();
    });
}

fn multiples() -> u32 {
    let mut sum: u32 = 0;
    for i in 3..=999 {
        if i % 3 == 0 {
            sum += i;
        } else if i % 5 == 0 {
            sum += i;
        }
    }
    return sum;
}
