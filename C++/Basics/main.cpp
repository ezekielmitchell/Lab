#include <iostream>

using namespace std;

// ** Pointers & Dynamic Memory Allocation ** //
void pointers_dynamic() {
    // Basic Pointers
    int x = 10;
    int* p = &x; // p holds address of x

    cout << p << endl;
    cout << *p << endl;
    x = 5;
    cout << p << endl;
    cout << *p << endl;
    *p = 20;
    cout << x << endl;
    cout << *p << endl;

    // Dynamic memory allocation
    int* arr = new int[5]; // allocate array of 5 integers
    for (int i=0; i < 5; i++){
        arr[i] = i * 10;
        cout << arr[i] << endl; // dynamic array
    }

    int* n = new int;
    cout << *n << endl;
    *n = 3;
    cout << *n << endl;

    delete[] arr; // Free memory!!
}

// ** LINKED LISTS ** //
class Node {
    public:
        int data;
        Node* next;

        Node(int value) {
            data = value;
            next = nullptr;
        }
};

class LinkedList {
    
    private:
        Node* head;

    public:
        LinkedList() {
            head = nullptr;
        }

        ~LinkedList(){
            Node* current = head;
            while (current != nullptr) {
                Node* next = current->next;
                current = next;
            }

            head = nullptr;
        }
};

// ** LINEAR RECURSION ** //
int fib(int n){
    // base
    if (n<=1){
        return n;
    }
    // recursive
    return fib(n-1)+fib(n-1);
}

// ** BINARY RECURSION ** //
int binarySum(int arr[], int start, int n){
    // base case
    if (n==1){return arr[start];}

    // recursive case
    int mid = n/2;
    return binarySum(arr, start, mid) + binarySum(arr, start, n-mid);

}


int main() {
    pointers_dynamic();
    return 0;
}