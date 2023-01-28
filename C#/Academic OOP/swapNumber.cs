using System;
namespace swapNumber
{
    class Swap
    {
        public static void Main(string[] args) {
            int temp = 0;
            Console.WriteLine("Enter the value of a");
            int a = Convert.ToInt32(Console.ReadLine());
            Console.WriteLine("Enter the value of b");
            int b = Convert.ToInt32(Console.ReadLine());

            Console.WriteLine("Before Swap Number a:{0}, b:{1}", a,b);
            temp = a;
            a = b;
            b = temp;
            Console.WriteLine("After Swap Number a:{0}, b:{1}", a,b);
        }
    }
}
