import java.util.Scanner;

class Complex {
    private double real;
    private double imaginary;

    public Complex(double r, double i) {
        real = r;
        imaginary = i;
    }

    public Complex add(Complex c) {
        double newReal = real + c.real;
        double newImaginary = imaginary + c.imaginary;
        return new Complex(newReal, newImaginary);
    }

    public void display() {
   
        System.out.println(real + " + " + imaginary + "i");
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.print("Enter the real and imaginary parts of the first complex number: ");
        double real1 = scanner.nextDouble();
        double imaginary1 = scanner.nextDouble();

        System.out.print("Enter the real and imaginary parts of the second complex number: ");
        double real2 = scanner.nextDouble();
        double imaginary2 = scanner.nextDouble();

        Complex complex1 = new Complex(real1, imaginary1);
        Complex complex2 = new Complex(real2, imaginary2);

        Complex sum = complex1.add(complex2);

        System.out.println("Complex Number 1: ");
        complex1.display();

        System.out.println("Complex Number 2: ");
        complex2.display();

        System.out.println("Sum of Complex Numbers: ");
        sum.display();
    }
}
