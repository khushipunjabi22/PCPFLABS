#include <iostream>
using namespace std;

class Matrix {
private:
    int data[100][100];
    int rows;
    int cols;

public:
    Matrix(int numRows, int numCols) : rows(numRows), cols(numCols) {
    }

    void inputMatrix() {
        cout << "Enter the elements of the matrix:" << endl;
        for (int i = 0; i < rows; i++) {
            for (int j = 0; j < cols; j++) {
                cin >> data[i][j];
            }
        }
    }

    void displayMatrix() {
        for (int i = 0; i < rows; i++) {
            for (int j = 0; j < cols; j++) {
                cout << data[i][j] << " ";
            }
            cout << endl;
        }
    }

    Matrix operator+(Matrix m) {
        Matrix result(rows, cols);
        for (int i = 0; i < rows; i++) {
            for (int j = 0; j < cols; j++) {
                result.data[i][j] = data[i][j] + m.data[i][j];
            }
        }
        return result;
    }
};

int main() {
    using namespace std;
    int numRows, numCols;
    cout << "Enter the number of rows and columns for the matrices: ";
    cin >> numRows >> numCols;

    Matrix matrix1(numRows, numCols);
    Matrix matrix2(numRows, numCols);

    cout << "Matrix 1:" << endl;
    matrix1.inputMatrix();

    cout << "Matrix 2:" << endl;
    matrix2.inputMatrix();

    Matrix sum = matrix1 + matrix2;

    cout << "Matrix 1:" << endl;
    matrix1.displayMatrix();

    cout << "Matrix 2:" << endl;
    matrix2.displayMatrix();

    cout << "Sum of Matrices:" << endl;
    sum.displayMatrix();

    return 0;
}
