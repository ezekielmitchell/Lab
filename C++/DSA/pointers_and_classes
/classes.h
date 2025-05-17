#ifndef CLASSES_H
#define CLASSES_H
#include<string>

using namespace std;

class Cookie {
    private:
        string color;
    
    public:
        Cookie (string color) {
            this->color = color;
        }

        void setColor(string color) {
            this->color = color;
        }

        string getColor() {
            return color;
        }


};

#endif