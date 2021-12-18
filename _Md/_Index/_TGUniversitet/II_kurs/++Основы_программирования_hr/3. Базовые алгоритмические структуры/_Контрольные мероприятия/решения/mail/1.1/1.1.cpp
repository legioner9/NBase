    #include <iostream>
    #include <math.h>
    #include <clocale>
    using namespace std;
    int main()
    {
        // setlocale(LC_CTYPE, "rus");
        double x, a, b, y;
        cout << "\n Enter x, a, b " << endl;
        cin >> x >> a >> b;                               // ввод исходных данных
        y = (a + b) * pow(a, (b + 1)) + tan(x);
        cout << "\n y=" << y << endl;               // вывод результата

        system("pause");
        return 0;
    }