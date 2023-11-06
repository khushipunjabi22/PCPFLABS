import java.util.Scanner;

class Complex {
    public int real, imaginary;

    public void getNo() {
        Scanner input = new Scanner(System.in);
        System.out.print("Enter real part: ");
        real = input.nextInt();
        System.out.print("Enter imaginary part: ");
        imaginary = input.nextInt();
    }

    public void display() {
        System.out.println(real + " + " + imaginary + "i");
    }

    public Complex add(Complex c2) {
        Complex c3 = new Complex();
        c3.real = real + c2.real;
        c3.imaginary = imaginary + c2.imaginary;
        return c3;
    }
}

public class Main {
    public static void main(String[] args) {
        Complex c1 = new Complex();
        Complex c2 = new Complex();
        Complex c3;

        System.out.println("Enter the first complex number:");
        c1.getNo();
        System.out.print("You entered: ");
        c1.display();

        System.out.println("Enter the second complex number:");
        c2.getNo();
        System.out.print("You entered: ");
        c2.display();

        c3 = c1.add(c2);

        System.out.println("Result:");
        c3.display();
    }
}
