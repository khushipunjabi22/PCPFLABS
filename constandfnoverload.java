class Shape {
}

class Rectangle extends Shape {
    private double length;
    private double width;

    public Rectangle(double length, double width) {
        this.length = length;
        this.width = width;
    }

    public Rectangle(double side) {
        this.length = side;
        this.width = side;
    }

    public double calculateArea() {
        return length * width;
    }
}

class Circle extends Shape {
    private double radius;

    public Circle(double radius) {
        this.radius = radius;
    }

    public double calculateArea() {
        return Math.PI * radius * radius;
    }
}

public class Main {
    public static void main(String args[]) {
        Rectangle rect1 = new Rectangle(2.5, 3.2);
        Rectangle rect2 = new Rectangle(4.0); // Using the overloaded constructor
        Circle cir = new Circle(5.2);

        System.out.println("Area of rectangle 1: " + rect1.calculateArea());
        System.out.println("Area of rectangle 2: " + rect2.calculateArea());
        System.out.println("Area of circle: " + cir.calculateArea());
    }
}
