#include <cstdlib>
#include <time.h>
#include <iostream>

using namespace std;

// функция генерации случайного числа из диапазона от range_min до range_max включительно
int rrand(int range_min, int range_max)
{
    return rand() % (range_max - range_min + 1) + range_min;
}

const unsigned int ARRSIZE = 10;
const int ABSLIMIT = 10;

int ary[ARRSIZE];

int main(void)
{
    int a;
    cout << "Enter a = 1(int) if be test this" << endl;
    cin >> a;

    srand(static_cast<unsigned int>(time(NULL)));

    if (a == 1)
    {
        // заполнение массива тестовыми значениями;
        ary[0] = 54;
        ary[1] = 53;
        ary[2] = 52;
        ary[3] = 51;
        ary[4] = 50;
        ary[5] = -7;
        ary[6] = 6;
        ary[7] = 5;
        ary[8] = -2;
        ary[9] = 1;
    }
    else

    {
        // инициализация массива случайными значениями из диапазона -ABSLIMIT..ABSLIMIT
        for (unsigned int i = 0; i < ARRSIZE; i++)
        {
            ary[i] = rrand(-ABSLIMIT, ABSLIMIT);
            cout << "ary[i] = " << ary[i] << endl;
        }
    }

    int ary_squaring[ARRSIZE];

    for (unsigned int i = 0; i < ARRSIZE; i++)
    {
        if (ary[i] < 0)
        {
            ary_squaring[i] = ary[i] * ary[i];
        }
        else
        {
            ary_squaring[i] = ary[i];
        }

        cout << "ary_squaring[i] = " << ary_squaring[i] << endl;
    }

    bool flag{false};

    for (unsigned int i = 0; i < ARRSIZE - 1; i++)
    {
        if (ary_squaring[i] < ary_squaring[i + 1])
        {
            flag = true;
            break;
        }
    }
    cout << boolalpha << "flag = " << flag << endl;

    int res;
    int res_0{0};
    int res_1{1};

    if (flag)
    {
        for (unsigned int i = 0; i < ARRSIZE; i++)
        {
            res_1 *= ary_squaring[i];
            cout << res_1 << " ";
        }
        cout << endl;

        res = res_1;
    }
    else
    {
        for (unsigned int i = 0; i < ARRSIZE; i++)
        {
            res_0 += ary_squaring[i];
            cout << res_0 << " ";
        }
        cout << endl;

        res = res_0;
    }
    cout << "res = " << res << endl;
    return 0;
}