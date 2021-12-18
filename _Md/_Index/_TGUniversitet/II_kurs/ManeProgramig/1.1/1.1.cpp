#include <iostream>
#include <math.h>
using namespace std;
int main()
{

    double x, a, b, y;
    cout << "\n Enter x, a, b " << endl;
    cin >> x >> a >> b; // ввод исходных данных
    y = (a + b) * pow(a, (b + 1)) + tan(x);
    cout << "\n y=" << y << endl; // вывод результата

    return 0;
}