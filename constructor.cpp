#include <iostream>

class Rectangle {
private:
    int area;
    int length;
    int breadth;

public:
    Rectangle(int l, int b) {
        length = l;
        breadth = b;
    }

    void calculateArea() {
        area = length * breadth;
        std::cout << "Area of the rectangle is: " << area << std::endl;
    }
};

int main() {
    Rectangle r1(15, 15);
    std::cout << "Area of the rectangle is:" << std::endl;
    r1.calculateArea();
    return 0;
}
