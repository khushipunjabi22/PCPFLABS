public class InheritanceDemo
{
public static void main(String[] args)
{
Book b;
b=new Book();
b.display();
b=new Reference_Book();
b.display();
b=new Magazine();
b.display();
}
}
class Book
{
void display() {
System.out.println("Name-The complete Ref Java 2"); 
System.out.println("Author-Herbert Schildt");
System.out.println();
}
}
class Reference_Book extends Book
{
void display(){
System.out.println("Name-Pure Java 2"); 
System.out.println("Author-Kenneth L");
System.out.println();
}
}
class Magazine extends Book
{
void display(){
System.out.println("Name-Core Java"); 
System.out.println("Author-Cay S");
System.out.println();
}
