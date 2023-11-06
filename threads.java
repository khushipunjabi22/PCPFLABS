class one extends Thread{

        public void run(){
       for (int i=1;i<=30;i++)
       {
           System.out.println(i);
       }
    }
}

class two extends Thread{

    public void run(){
       for (char i='a'; i <='z';i++)
       {
           System.out.println(i);
       }
    }
}

class three extends Thread{
    public void run(){
        String months[] = {"January","February","March","January","February","March","January","February","March"};
        for (String month : months){
           
           System.out.println(month);
       
        }
        
    }
}

public class Concurrent{
    public static void main(String [] args){
        one th1= new one();
        two th2 = new two();
         three th3 = new three();
         th1.start();
         th2.start();
         th3.start();
    }
}
