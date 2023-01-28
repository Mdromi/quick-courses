using System;
namespace Switch
{
    class Switch
    {
        public static void Main(string[] args) {
            string  value = "";
            Console.WriteLine("Enter a single character");
            string str = Console.ReadLine();
            str = str.ToLower();
            if(str.Length == 1) {
                switch (str)
                {
                    case "a":
                    value = "vowel";
                    break;
                    case "e":
                    value = "vowel";
                    break;
                    case "i":
                    value = "vowel";
                    break;
                    case "o":
                    value = "vowel";
                    break;
                    case "u":
                    value = "vowel";
                    break;
                    default:
                    value = "constant";
                    break;
                }
                Console.WriteLine("{0} this id a character value",value);
            } else {
                Console.WriteLine("ERROR! Please Enter a single character");
            }
        }
    }
}
