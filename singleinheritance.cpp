#include <iostream>
#include <cmath>

class Circle {
public:
    int radius;

    void setRadius(int r) {
        radius = r;
    }
};

class Calculate : public Circle {
public:
    double area, volume;

    double calculateArea() {
        return 3.14 * radius * radius;
    }

    double calculateVolume() {
        return 1.33 * radius * radius * radius;
    }
};

int main() {
    Calculate circle;
    circle.setRadius(5.2);

    std::cout << "Circle Area: " << circle.calculateArea() << std::endl;
    std::cout << "Circle Volume: " << circle.calculateVolume() << std::endl;

    return 0;
}
