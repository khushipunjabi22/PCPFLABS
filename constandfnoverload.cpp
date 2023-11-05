#include <iostream>
#include <cmath>

class Shape {
};

class Rectangle : public Shape {
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

class Circle : public Shape {
private:
    double radius;

public:
    Circle(double r) : radius(r) {}

    double calculateArea() {
        return 3.14 * radius * radius;
    }
};

int main() {
    Rectangle rect1(2.5, 3.2);
    Rectangle rect2(4.0); // Using the overloaded constructor
    Circle cir(5.2);

    std::cout << "Area of rectangle 1: " << rect1.calculateArea() << std::endl;
    std::cout << "Area of rectangle 2: " << rect2.calculateArea() << std::endl;
    std::cout << "Area of circle: " << cir.calculateArea() << std::endl;

    return 0;
}
