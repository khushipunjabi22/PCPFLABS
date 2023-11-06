class Circle {
    int radius;

    void setRadius(int r) {
        radius = r;
    }
}

class Calculate extends Circle {
    double area;

    double calculateArea() {
        return 3.14 * radius * radius;
    }
}

class CalculateVolume extends Calculate {
    double volume;

    double calculateVolume() {
        return (4.0 / 3.0) * 3.14 * radius * radius * radius;
    }
}

public class Main {
    public static void main(String[] args) {
        CalculateVolume circle = new CalculateVolume();
        circle.setRadius(5);

        System.out.println("Circle Area: " + circle.calculateArea());
        System.out.println("Circle Volume: " + circle.calculateVolume());
    }
}
