function multiples() {
    var sum = 0;
    for (var i = 3; i < 1000; i++) {
        if (i % 3 == 0) {
            sum += i;
        }
        else if (i % 5 == 0) {
            sum += i;
        }
    }
    return sum;
}
console.time('multiples');
multiples();
console.timeEnd('multiples');
