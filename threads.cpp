#include <iostream>
#include <thread>
#include <string>

using namespace std; 

int main() {
    std::thread th1([]() {
        for (int i = 1; i <= 30; i++) {
            cout << i << endl;
        }
    });

    std::thread th2([]() {
        for (char i = 'a'; i <= 'z'; i++) {
            cout << i << endl;
        }
    });

    std::thread th3([]() {
        string months[] = {"January", "February", "March", "January", "February", "March", "January", "February", "March"};
        for ( string month : months) {
            cout << month << endl;
        }
    });

    th1.join();
    th2.join();
    th3.join();

    return 0;
}
