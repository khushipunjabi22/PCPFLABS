class Animal {
    void makeSound() {
        System.out.println("Animal makes a sound");
    }
}

class Dog extends Animal {
    @Override
    void makeSound() {
        System.out.println("Dog barks");
    }
}

class Cat extends Animal {
    @Override
    void makeSound() {
        System.out.println("Cat meows");
    }
}

public class DynamicBindingExample {
    public static void main(String[] args) {
        Animal myAnimal = new Dog(); // Dynamic binding
        myAnimal.makeSound(); // Calls the Dog's makeSound method
    }
}
