using System;
namespace swapNumber
{
    class Swap
    {
        public static int recersion(int n) {
            if(n == 0) {
                return 1;
            }
            return n * recersion(n-1);
        }
        public static void Main(string[] args) {
            int temp = 0;
            Console.WriteLine("Enter the value of n");
            int n = Convert.ToInt32(Console.ReadLine());
            int fact = recersion(n);
            Console.WriteLine("Factorial is: "+ fact);
        }
    }
}
