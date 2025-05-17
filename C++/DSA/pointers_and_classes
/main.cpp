#include<iostream>
#include<string>
#include "classes.h"

using namespace std;

int main(int argc, char* argv[]) {

    // check for command-line argument
    if (argc > 1) { 
        for (int i=0; i<argc; i++) {
            cout << argv[i] << ' ';
        }
        cout << endl;
    } else { 
        cout << "No additional argument provided" << endl;
    }

    Cookie* red = new Cookie("");
    Cookie* blue = new Cookie("");
    Cookie* green = new Cookie("");

    cout << "Red old: " << red->getColor() << endl;
    cout << "Blue old: " << blue->getColor() << endl;
    cout << "Green old: " << green->getColor() << endl;

    red->setColor(argv[1]);
    blue->setColor(argv[2]);
    green->setColor(argv[3]);

    cout << "Red new: " << red->getColor() << endl;
    cout << "Blue new: " << blue->getColor() << endl;
    cout << "Green new: " << green->getColor() << endl;

    return 0;
}