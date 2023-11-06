#include <iostream>

class Adder {
public:
    Adder() : Total(0) {} // Constructor to initialize the total earnings to zero
    
    void Add(int price) {
        Total += price;
    }

    int getTotalEarning() {
        return Total;
    }

private:
    int Total;
};

int main() {
    Adder bakery;

    // Adding earnings for three types of cakes
    bakery.Add(100); // Earnings for the first type of cake
    bakery.Add(150); // Earnings for the second type of cake
    bakery.Add(200); // Earnings for the third type of cake

    std::cout << "Total Earnings of the Bakery: $" << bakery.getTotalEarning() << std::endl;

    return 0;
}
