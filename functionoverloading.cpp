#include <iostream>

class Square {
public:
    void calculateArea(double side) {
        std::cout << "Area of the Square: " << side * side << std::endl;
    }

    void calculateArea(int side) {
        std::cout << "Area of the Square: " << side * side << std::endl;
    }
};

int main() {
    Square obj;
    obj.calculateArea(3.2);
    obj.calculateArea(10);
    return 0;
}
