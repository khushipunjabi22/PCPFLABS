class Circle {
    int radius;

    void setRadius(int r) {
        radius = r;
    }
}

class Calculate extends Circle {
    double area, volume;

    double calculateArea() {
        return 3.14 * radius * radius;
    }

    double calculateVolume() {
        return 1.33 * radius * radius * radius;
    }
}

public class Main {
    public static void main(String[] args) {
        Calculate circle = new Calculate();
        circle.setRadius(5);

        System.out.println("Circle Area: " + circle.calculateArea());
        System.out.println("Circle Volume: " + circle.calculateVolume());
    }
}
