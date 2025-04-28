#include <iostream>
#include "include/project.h"

int main() {

    // Pet* pet_one = new::Pet("Endr", 4);
    Pet* pet_two = new::Pet("Bear", 13);
    cout << pet_two->get_name() << " is age: " << pet_two->get_age() << endl;
    pet_two->set_age(22);
    cout << pet_two->get_name() << " is now: " << pet_two->get_age() << endl;
    cout << pet_two->get_name() << "'s new name is: ";
    pet_two->set_name("Endr");
    cout << pet_two->get_name() << endl;

    run();
    initialize();
    cleanup();

    // Setup empty pet
    Pet* pet = new::Pet();
    cout << pet->get_name() << " is age: " << pet->get_age() << endl;
    pet->set_name("Pet");
    pet->set_age(1);
    cout << pet->get_name() << " is age: " << pet->get_age() << endl;
    

    return 0;
}