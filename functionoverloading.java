class Square
{
void Ar( double side)
{
System.out.println("Area of the Square:"+side*side);
}
void Ar( float side)
{
System.out.println("Area of the Square:"+side*side);
}
}
class Area{
public static void main(String [] args)
{
Square obj = new Square();
obj.Ar(3.2);
obj.Ar(10);
}
}
