#include <iostream>

using namespace std;

int main(void)
{
    int arr[3][3];
    for (int i = 0; i < 3; i++)
    {
        for (int j = 0; j < 3; j++)
        {
            cout << "Enter arr[" << i << "][" << j << "]:";
            cin >> arr[i][j];
        }
    }

    cout << "THIS is INIT array : " << endl;

    for (int i = 0; i < 3; i++)
    {
        for (int j = 0; j < 3; j++)
        {
            cout << arr[i][j] << " ";
        }
        cout << endl;
    }
    int res_arr[3];

    for (int i = 0; i < 3; i++)
    {
        res_arr[i] = 1;
        for (int j = 0; j < 3; j++)
        {
            res_arr[i] *= arr[j][i];
        }
    }

    cout << "THIS is RESULT array : " << endl;

    for (int j = 0; j < 3; j++)
    {
        cout << res_arr[j] << " ";
    }
    cout << endl;

    return 0;
}