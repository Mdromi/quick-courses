using System;
namespace sumOfArray
{
    class sumOfArray
    {
        public static void Main(string[] args) {
            int[] num = {1, 2, 3, 4, 5, 6, 7, 8, 9};
            int sum = 0;
            for (int i = 0; i < num.Length; i++)
            {
                sum += num[i];
            }
            Console.WriteLine("Sum of array: "+sum);
        }
    }
}
