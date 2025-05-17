#include<iostream>
#include "node.h"
using namespace std;



int main(int argc, char* argv[]) {

    LinkedList* one = new LinkedList(3);
    one->append(2);
    one->append(9);
    one->append(43);
    one->print_list();
    one->delete_last();
    one->delete_last();
    one->print_list();
    one->delete_list();
    one->print_list();

    return 0;
}