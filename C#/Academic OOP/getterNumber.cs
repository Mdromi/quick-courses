using System;
namespace getterNumber
{
    class getterNumber
    {
        public static void Main(string[] args) {
            int temp = 0;
            Console.WriteLine("Enter the value of a");
            int a = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine("Enter the value of b");
            int b = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine("Enter the value of c");
            int c = Convert.ToInt32(Console.ReadLine());

            if(a>b && a>c) {
            Console.WriteLine("Gretter Number is a");
            }
            else if(b>a && b>c) {
            Console.WriteLine("Gretter Number is b");
            } else {
            Console.WriteLine("Gretter Number is c");
            }
        }
    }
}
