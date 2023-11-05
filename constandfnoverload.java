class Rectangle {
    private double length;
    private double width;

    public Rectangle(double l, double w) {
        length = l;
        width = w;
    }

    public Rectangle(double side) {
        length = side;
        width = side;
    }

    public double calculateArea() {
        return length * width;
    }
}
public class Main {
    public static void main(String[] args) {
        Rectangle rect1 = new Rectangle(2.5, 3.2);
        Rectangle rect2 = new Rectangle(4.0); // Using the overloaded constructor

        System.out.println("Area of rectangle 1: " + rect1.calculateArea());
        System.out.println("Area of rectangle 2: " + rect2.calculateArea());
    }
}

