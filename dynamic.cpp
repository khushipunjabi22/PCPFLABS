#include <iostream>

class Animal {
public:
    virtual void makeSound() {
        std::cout << "Animal makes a generic sound." << std::endl;
    }
};

class Dog : public Animal {
public:
    void makeSound() override {
        std::cout << "Dog barks: Woof woof!" << std::endl;
    }
};

class Cat : public Animal {
public:
    void makeSound() override {
        std::cout << "Cat meows: Meow meow!" << std::endl;
    }
};

int main() {
    Animal animal;
    Dog dog;
    Cat cat;

    Animal* animalPtr = &animal;
    Animal* dogPtr = &dog;
    Animal* catPtr = &cat;

    animalPtr->makeSound();
    dogPtr->makeSound();
    catPtr->makeSound();

    return 0;
}
