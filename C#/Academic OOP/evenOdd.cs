using System;
namespace evenOdd
{
    class evenOdd
    {
        public static void Main(string[] args) {
            Console.WriteLine("Enter the value of a");
            int a = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine("Enter the value of b");
            int b = Convert.ToInt32(Console.ReadLine());

            if(((a%2==0)&&(b%2==0)) || ((a%2==1)&&(b%2==1))) {
            Console.WriteLine(true);
            } else{
            Console.WriteLine(false);
            }
        }
    }
}
