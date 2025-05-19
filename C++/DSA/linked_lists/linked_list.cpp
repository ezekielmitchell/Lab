#include <iostream>
#include "node.h"
using namespace std;

int main(int argc, char *argv[])
{

    LinkedList *one = new LinkedList(3);
    one->append(2);
    one->append(9);
    one->delete_node(0);
    one->append(43);
    one->print_list();
    one->set(0, 99);
    one->delete_last();
    one->prepend(27);
    one->delete_last();
    one->print_list();
    one->delete_last();
    one->delete_first();
    one->print_list();
    one->delete_first();
    one->insert(one->get_length(), 2);
    one->print_list();
    delete one;
    // one->print_list(); error: list has been deleted

    return 0;
}
