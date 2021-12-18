#include <iostream>
using namespace std;

int main()
{
    double a, b, c;

    cout << "Enter a(double type)\n";
    cin >> a;
    if (a >= 0)
    {
        cout << a * a << endl;
    }

    cout << "Enter b(double type)\n";
    cin >> b;
    if (b >= 0)
    {
        cout << b * b << endl;
    }

    cout << "Enter c(double type)\n";
    cin >> c;
    if (c >= 0)
    {
        cout << c * c << endl;
    }

    return 0;
}