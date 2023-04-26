#include <stdio.h>
#include <stdlib.h>
#include <time.h>

int multiples();

int main(int argc, char* argv[]) {
    //clock_t start, end;
    int i = 0;
    //double cpu_time_used = 0;
    for (i; i < 10000; i++) {
      //  start = clock();
        multiples();
       // end = clock();

//        cpu_time_used += ((double) (end - start)) / CLOCKS_PER_SEC;
    }
  //  printf("%f microseconds\n", ((cpu_time_used / 10000) * 1000000));
}

int multiples() {
    int i = 3;
    int sum = 0;
    for (i; i < 1000; i++) {
        if (i % 3 == 0) {
            sum += i;
        } else if (i % 5 == 0) {
            sum += i;
        }
    }
    return sum;
}