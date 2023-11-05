#include <iostream>

class Rectangle {
private:
    double length;
    double width;

public:
    Rectangle(double l, double w) : length(l), width(w) {}

    Rectangle(double side) : length(side), width(side) {}

    double calculateArea() {
        return length * width;
    }
};


int main() {
    Rectangle rect1(2.5, 3.2);
    Rectangle rect2(4.0); // Using the overloaded constructor
   
    std::cout << "Area of rectangle 1: " << rect1.calculateArea() << std::endl;
    std::cout << "Area of rectangle 2: " << rect2.calculateArea() << std::endl;


    return 0;
}
