#include <iostream>
using namespace std;

class Complex {
private:
    double real;
    double imag;

public:
    Complex(double r, double i) : real(r), imag(i) {}

    Complex operator+( Complex other) {
        return Complex(real + other.real, imag + other.imag);
    }

    void displayComplex() {
        cout << real << " + " << imag << "i";
    }
};

int main() {
    double real1, imag1, real2, imag2;
    cout << "Enter the real and imaginary parts of the first complex number: ";
    cin >> real1 >> imag1;

    cout << "Enter the real and imaginary parts of the second complex number: ";
    cin >> real2 >> imag2;

    Complex complex1(real1, imag1);
    Complex complex2(real2, imag2);

    Complex sum = complex1 + complex2;

    cout << "Complex Number 1: ";
    complex1.displayComplex();
    cout << endl;

    cout << "Complex Number 2: ";
    complex2.displayComplex();
    cout << endl;

    cout << "Sum of Complex Numbers: ";
    sum.displayComplex();
    cout << endl;

    return 0;
}
