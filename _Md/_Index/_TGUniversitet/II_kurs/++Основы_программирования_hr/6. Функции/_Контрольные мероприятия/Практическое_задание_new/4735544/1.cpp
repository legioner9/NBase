// Example program
#include <iostream>
#include <iomanip>
using namespace std;

#define NMAX 100
//вывод матрицы
void show(int a[][NMAX], int n, int m)
{
	for (int i = 0; i<n; i++)	//цикл по строкам
	{
		for (int j = 0; j<m; j++)//цикл по столбцам
		{
			cout << setw(5) << a[i][j];
		}
		cout << endl;
	}
}
//ввод матрицы
void input(int a[][NMAX], int n)
{
	for (int i = 0; i < n; i++)
	{
		for (int j = 0; j < n; j++)
		{
			cout << "a[" << i + 1 << "][" << j + 1 << "] = ";
			cin >> a[i][j];
		}
	}
}
//функция исключения из матрицы строки, в которой расположен минимальный элемент главной диагонали.
int remrow(int a[][NMAX], int n)
{
	int imin = 0;
	for (int i = 1; i < n; i++)
	{
		if (a[i][i] < a[imin][imin])
		{
			imin = i;
		}
	}
	for (int i = imin; i < n-1; i++)
	{
		for (int j = 0; j < n; j++)
		{
			a[i][j] = a[i + 1][j];
		}
	}
	return imin;
}

int main()
{
	int a[NMAX][NMAX];
	int n;
	cout << "n = ";
	cin >> n;
	input(a, n);
	cout << "Matrix:" << endl;
	show(a, n, n);
	int imin=remrow(a, n);
	cout << "Removed row: " << imin + 1 << endl;
	cout << "Result:" << endl;
	int m = n - 1;
	show(a, m, n);

}
