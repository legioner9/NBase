// Example program
#include <iostream>
#include <iomanip>
using namespace std;

#define NMAX 100
//вывод матрицы
void show(int a[][NMAX], int n, int m);
//ввод матрицы
void input(int a[][NMAX], int n, int m);
//  исключать из нее строку и столбец, в которых расположен минимальный элемент
void remrowcol(int a[][NMAX], int n, int m);

int main()
{
	int a[NMAX][NMAX];
	int n,m;
	cout << "n = ";
	cin >> n;
	cout << "m = ";
	cin >> m;
	input(a, n,m);
	cout << "Matrix:" << endl;
	show(a, n, m);
	remrowcol(a, n, m);
	n--;
	m--;
	cout << "Result:" << endl;
	show(a, n, m);
}
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
void input(int a[][NMAX], int n, int m)
{
	for (int i = 0; i < n; i++)
	{
		for (int j = 0; j < m; j++)
		{
			cout << "a[" << i + 1 << "][" << j + 1 << "] = ";
			cin >> a[i][j];
		}
	}
}
//функция исключающая из матрицы строку и столбец, в которых расположен минимальный элемент
void remrowcol(int a[][NMAX], int n, int m)
{
	int imin = 0, jmin = 0;
	for (int i = 0; i < n; i++)
	{
		for (int j = 0; j < m; j++)
		{
			if (a[i][j] < a[imin][jmin])
			{
				imin = i;
				jmin = j;
			}
		}
	}
	for (int i = imin; i < n - 1; i++)
	{
		for (int j = 0; j < m; j++)
		{
			a[i][j] = a[i + 1][j];
		}
	}
	for (int i = jmin; i < m - 1; i++)
	{
		for (int j = 0; j < n; j++)
		{
			a[j][i] = a[j][i + 1];
		}
	}
}

