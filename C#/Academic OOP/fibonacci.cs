using System;
namespace fibonacci
{
    class fibonacci
    {
        public static void Main(string[] args) {
            int temp = 0, a= 0, b =1;
            Console.WriteLine("Enter the value of n");
            int n = Convert.ToInt32(Console.ReadLine());
           for (int i = 1; i <n; i++)
           {
            temp = a + b;
            a = b;
            b = temp;
           }
            Console.WriteLine("Sum of fibonacci: "+ temp);
        }
    }
}
