class MyObject {
    // Constructor for initialization
    MyObject() {
        System.out.println("Object is initialized.");
    }

    // Finalize method for cleanup
    protected void finalize() {
        System.out.println("Object is finalized and cleaned up.");
    }
}

public class InitializationFinalizationExample {
    public static void main(String[] args) {
        MyObject obj1 = new MyObject(); // Object initialization
        MyObject obj2 = new MyObject(); // Object initialization

        // Let's make obj1 eligible for finalization by removing its reference
        obj1 = null;

        // Suggesting the JVM to run the garbage collector
        System.gc();

        // Sleep for a while to allow the finalization to occur (in practice, you shouldn't rely on this)
        try {
            Thread.sleep(1000);
        } catch (InterruptedException e) {
            e.printStackTrace();
        }
    }
}
