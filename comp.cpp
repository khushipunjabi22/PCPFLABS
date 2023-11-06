#include <iostream>
using namespace std;

class  complex{
  public:
    int real, imaginary;
    
    void getno(){
        
        cin>>real>>imaginary;
        
    }
    
    void display()
    {
        cout<<real<<" + "<<imaginary<<"i"<<endl;
        
    }

    complex add(complex c2)
    {
        complex c3;
        c3.real = real + c2.real;
        c3.imaginary = imaginary + c2.imaginary;
        return c3;
    }
    
};

int main()
{
    complex c1,c2,c3;
    cout<<"Enter real and imaginary part"<<endl;
    c1.getno();
     c1.display();
    
     cout<<"Enter real and imaginary part"<<endl;
    c2.getno();
     c2.display();
     
    c3=c1.add(c2);
     cout<<"Result"<<endl;
     c3.display();
}
