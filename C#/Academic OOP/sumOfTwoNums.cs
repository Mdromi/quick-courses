using System;
namespace SumOfTwoNumber
{
    class Sum
    {
        public static void Main(string[] args) {
            Console.WriteLine("Enter the value of a");
            int a = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine("Enter the value of b");
            int b = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine("Sum of Two Number {0}", a+b);
        }
    }
}
