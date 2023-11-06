import java.util.Scanner;

class Matrix {
    private int[][] data;
    private int rows;
    private int cols;

    public Matrix(int numRows, int numCols) {
        rows = numRows;
        cols = numCols;
        data = new int[rows][cols];
    }

    public void inputMatrix() {
        Scanner scanner = new Scanner(System.in);
        System.out.println("Enter the elements of the matrix:");
        for (int i = 0; i < rows; i++) {
            for (int j = 0; j < cols; j++) {
                data[i][j] = scanner.nextInt();
            }
        }
    }

    public void displayMatrix() {
        for (int i = 0; i < rows; i++) {
            for (int j = 0; j < cols; j++) {
                System.out.print(data[i][j] + " ");
            }
            System.out.println();
        }
    }

    public Matrix add(Matrix m) {
        Matrix result = new Matrix(rows, cols);
        for (int i = 0; i < rows; i++) {
            for (int j = 0; j < cols; j++) {
                result.data[i][j] = data[i][j] + m.data[i][j];
            }
        }
        return result;
    }
}

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("Enter the number of rows and columns for the matrices: ");
        int numRows = scanner.nextInt();
        int numCols = scanner.nextInt();

        Matrix matrix1 = new Matrix(numRows, numCols);
        Matrix matrix2 = new Matrix(numRows, numCols);

        System.out.println("Matrix 1:");
        matrix1.inputMatrix();

        System.out.println("Matrix 2:");
        matrix2.inputMatrix();

        Matrix sum = matrix1.add(matrix2);

        System.out.println("Matrix 1:");
        matrix1.displayMatrix();

        System.out.println("Matrix 2:");
        matrix2.displayMatrix();

        System.out.println("Sum of Matrices:");
        sum.displayMatrix();
    }
}
