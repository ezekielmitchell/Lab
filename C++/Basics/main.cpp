#include<iostream>
#include<string>
#include<cmath>
#include<cstdlib>
#include<random>
#include<ctime>

using namespace std;

const double SALES_TAX = 0.04;
const double COUNTRY_TAX = 0.02;

int salesTax(int price) {
    cout << "Calculating sales tax..." << endl;
    cout << "State tax: " << price * SALES_TAX << endl;
    cout << "Country tax: " << price * COUNTRY_TAX << endl;
    return price - (price * SALES_TAX) - (price * COUNTRY_TAX);
}

void inputName() {
    string name;
    cout << "What is your name?" << endl;
    cin >> name;
    cout << "Hello, " << name << endl;
}

void cmathUse() {
    cout << "Square root of 25: " << sqrt(25) << endl;
    cout << "Power of 2^3: " << pow(2, 3) << endl;
    cout << "Ceil of 4.2: " << ceil(4.2) << endl;
    cout << "Floor of 4.2: " << floor(4.2) << endl;
    cout << "Round of 4.2: " << round(4.2) << endl;
}

double circleArea(double radius) {
    return M_PI*pow(radius, 2); 
}

void randomNum() {
    long elapsedSeconds = time(nullptr); // Get the current time
    srand(elapsedSeconds); // Seed the random number generator
    int randomNum = rand() % 100 + 1; // Random number between 1 and 100
    cout << "Random number: " << randomNum << endl;
}

int main() {

    return 0;
}