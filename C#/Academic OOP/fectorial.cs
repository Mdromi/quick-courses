using System;
namespace factorial
{
    class factorial
    {
        public static void Main(string[] args) {
            int fact = 1;
            Console.WriteLine("Enter the value of n");
            int n = Convert.ToInt32(Console.ReadLine());
           for (int i = 1; i <=n; i++)
           {
            fact *= i;
           }
            Console.WriteLine("Sum of Factorial: "+ fact);
        }
    }
}
