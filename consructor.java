class rectangle
{
	int ar, length, breadth;
	
	rectangle(int l, int b)
	{
		length = l;
		breadth = b;
	}
	
	void area()
	{
		ar = length*breadth;
		System.out.println(""+ar);
    }
}

 class Para{
	public static void main(String[] args)
	{
		rectangle r1 = new rectangle(15,15);
		System.out.println("Area of the rectangle is:");
		r1.area();
	}
}
