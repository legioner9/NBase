#include <cstdlib>
#include <time.h>
#include <iostream>

using namespace std;

// функция генерации случайного числа из диапазона от range_min до range_max включительно
int rrand(int range_min, int range_max) {
    return rand() % ((range_max - range_min + 1) + range_min);
}

const unsigned int ARRSIZE = 10;
const int ABSLIMIT = 10;

int ary[ARRSIZE];

int main(void) {

    srand(static_cast<unsigned int>(time(NULL)));

    // инициализация массива случайными значениями из диапазона -ABSLIMIT..ABSLIMIT
    for (unsigned int i = 0; i < ARRSIZE; i++) {
        ary[i] = rrand(-ABSLIMIT, ABSLIMIT);
        cout << "ary[i] = " << ary[i] << endl;
    }
    return 0;
}