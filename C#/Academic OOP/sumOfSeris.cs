using System;
namespace sumOfSeris
{
    class sumOfSeris
    {
        public static void Main(string[] args) {
            int sum = 0;
            Console.WriteLine("Enter the value of n");
            int n = Convert.ToInt32(Console.ReadLine());
           for (int i = 2; i <=n; i+=2)
           {
            sum += i;
           }
            Console.WriteLine("Sum of serius: "+ sum);
        }
    }
}
