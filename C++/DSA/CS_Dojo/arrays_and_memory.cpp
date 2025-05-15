#include<iostream>

using namespace std;

int main() {
    int arraySample_0[5] = {2, 4, 6, 8, 100};

    cout << sizeof(int) << endl;
    cout << sizeof(arraySample_0) << endl;

    for (int i=0; i<5; i++) {
        cout << arraySample_0[i] << ' ';
    }

    cout << endl;

    return 0;
}