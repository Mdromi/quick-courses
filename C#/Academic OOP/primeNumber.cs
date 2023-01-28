using System;
namespace primeNumber
{
    class primeNumber
    {
        public static void Main(string[] args) {
            int temp = 0;
            Console.WriteLine("Enter the value of n");
            int n = Convert.ToInt32(Console.ReadLine());

            for (int i = 2; i <= n; i++)
            {
                int ctr = 0;
                for (int j = 2; j < i; j++)
                {
                    if(i%j==0){
                        ctr++;
                        break;
                    }
                }
                if(ctr == 0 && n!=1) {
                    Console.Write(i + " ");
                }
            }
        }
    }
}
