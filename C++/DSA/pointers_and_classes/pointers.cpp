#include<iostream>

using namespace std;

void print(){
    cout << " " << endl;
    cout << " " << endl;
}

int main() { 
    
    print();
    print();

    int* num1 = new int(11);
    int* num2 = num1;

    return 0; }