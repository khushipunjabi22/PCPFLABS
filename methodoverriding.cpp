#include <iostream>

class Book {
public:
    void display() {
        std::cout << "Name-The complete Ref Java 2" << std::endl;
        std::cout << "Author-Herbert Schildt" << std::endl;
        std::cout << std::endl;
    }
};

class Reference_Book : public Book {
public:
    void display() {
        std::cout << "Name-Pure Java 2" << std::endl;
        std::cout << "Author-Kenneth L" << std::endl;
        std::cout << std::endl;
    }
};

class Magazine : public Book {
public:
    void display() {
        std::cout << "Name-Core Java" << std::endl;
        std::cout << "Author-Cay S" << std::endl;
        std::cout << std::endl;
    }
};

int main() {
    Book book;
    Reference_Book referenceBook;
    Magazine magazine;

    std::cout << "Displaying Book:" << std::endl;
    book.display();

    std::cout << "Displaying Reference_Book:" << std::endl;
    referenceBook.display();

    std::cout << "Displaying Magazine:" << std::endl;
    magazine.display();

    return 0;
}
