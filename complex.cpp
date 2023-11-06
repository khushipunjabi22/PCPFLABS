#include <iostream>
using namespace std;

class Complex {
private:
    double real;
    double imaginary;

public:
    Complex(double r = 0, double i = 0) : real(r), imaginary(i) {}

    Complex operator+(Complex c) {
        Complex sum;
        sum.real = real + c.real;
        sum.imaginary = imaginary +c.imaginary;
        return sum;
    }

     void display()
    {
        cout<<real<<" + "<<imaginary<<"i"<<endl;
    }

};

int main() {
    double real1, imaginary1, real2, imaginary2;

    cout << "Enter the real and imaginary parts of the first complex number: ";
    cin >> real1 >> imaginary1;

    cout << "Enter the real and imaginary parts of the second complex number: ";
    cin >> real2 >> imaginary2;

    Complex complex1(real1, imaginary1);
    Complex complex2(real2, imaginary2);

    Complex sum = complex1 + complex2;

    cout << "Complex Number 1: ";
    complex1.display();

    cout << "Complex Number 2: ";
    complex2.display();

    cout << "Sum of Complex Numbers: ";
    sum.display();

    return 0;
}
