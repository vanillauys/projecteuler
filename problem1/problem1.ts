function multiples(): number {
    let sum: number = 0;
    for (let i = 3; i < 1000; i++) {
        if (i % 3 == 0) {
            sum += i;
        } else if (i % 5 == 0) {
            sum += i;
        }
    }
    return sum;
}


console.time('multiples');
multiples();
console.timeEnd('multiples');