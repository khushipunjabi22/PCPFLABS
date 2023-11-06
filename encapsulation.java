public class Adder {
    private int total;

    public Adder() {
        total = 0;
    }

    public void add(int price) {
        total += price;
    }

    public int getTotalEarning() {
        return total;
    }

    public static void main(String[] args) {
        Adder bakery = new Adder();

        // Adding earnings for three types of cakes
        bakery.add(100); // Earnings for the first type of cake
        bakery.add(150); // Earnings for the second type of cake
        bakery.add(200); // Earnings for the third type of cake

        System.out.println("Total Earnings of the Bakery: $" + bakery.getTotalEarning());
    }
}
