#include<iostream>

using namespace std;

void print(int *num){
    cout << num << endl;
}

int main() { 

    int* num1 = new int(11);
    print(num1);
    int* num2 = num1;
    print(num2);

    num1 = new int(100);
    print(num1);

    return 0;
}