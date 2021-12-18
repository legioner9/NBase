#include <iostream>
#include <cmath>
using namespace std;

double fn(double x)
{
    return 1.0 + sin(2 * 3.14159265 * x);
}

int main(int argc, char const *argv[])
{
    double a, b;
    int n;

    /*   fractpart = modf(val , &intpart); */
    cout << "Enter a>=0 (double type)" << endl;
    cin >> a;
    cout << "Enter b>a>=0 (double type)" << endl;
    cin >> b;
    cout << "Enter n>=2 (int type)" << endl;
    cin >> n;

    double range = b - a;
    cout << "range = " << range << endl;
    double step = range / (n - 1);
    cout << "step = " << step << endl;
    double sum = 0;

    for (size_t i = 0; i < n; i++)
    {
        cout << " i = " << i;
        double ar = a + step * i;
        cout << " ar = " << ar;
        double val = fn(a + step * i);
        cout << " val = " << val;
        double intpart;
        double fractpart = modf(val, &intpart);
        cout << " fractpart = " << fractpart << endl;

        if (fractpart < 0.5)
        {
            cout << " if = " << fractpart << endl;
            sum += fractpart;
        }
    }

    cout << "sum = " << sum << endl;

    return 0;
}