#include<iostream>
#include<string>
using namespace std;

//FUNCTION
//f(x) = x^2 + 2
int add(int a, int b)
{
    int c = a + b;
    return c;
}

//Objects & Classes
class Employee{
    public:
        string name;
        int salary;

        //Constructor
        Employee(string n, int s, int sp)
        {
            this->name = n;
            this->salary = s;
            this->secretPassword = sp;
        }

        //Method
        void printDetails()
        {
            cout<<"The name of our first employee is "<< this->name<<
            " and his salary is "<< this->salary <<" Dolars."<<endl;
        }
        void getSecretPassword()
        {
            cout<<"The secret password of employee is "<<this->secretPassword<<endl;
        }
    private:
        int secretPassword;
};
//Inharit
class Programmer : public Employee
{
    public:
        int errors;

};

int main()
{
    //cout << "Hello world" << endl;
    //cout << "Next Line";

    //VARIABLE
    /*int a, b, c;
    a = 9;
    short sa = 10;
    cout << a << endl;
    cout << sa;
    */


    //camelCase Notation
    //int marksInMaths = 83;
    //cout <<"The marks of the students int math is " <<marksInMaths << endl;

    //DATA TYPE
    /*short a;
    int b;
    long c;
    long long d;
    float score = 45.32;
    double score2 = 45.322;
    long double score3 = 45.3322;
    float const score4 = 45.3;
    score3 = 23;
    cout << "The score is "<<score3;
    */

    //USER INPUT
    /*int a, b;
    cout<<"Enter first number"<<endl;
    cin>>a;

    cout<<"Enter second Number"<<endl;
    cin>>b;

    cout<<"a + b is "<<a + b<<endl;
    cout<<"a - b is "<<a - b<<endl;
    cout<<"a * b is "<<a * b<<endl;
    cout<<"a / b is "<<(float)a / b<<endl;
    cout<<"a % b is "<<a % b<<endl;
    */


    //CODITIONAL OPERATOARS

    //if-else
    /*int age;
    cout<<"Enter your age "<<endl;
    cin>>age;

    if(age>=150 || age<=4)
    {
        cout<<"Invalid age" <<endl;
    }
    else if(age >= 18)
    {
        cout << "You can vote" <<endl;
    }
    else
    {
        cout << "You can't vote" <<endl;
    }*/

    //Switch
    /*int age;
    cout<<"Enter your age "<<endl;
    cin>>age;
    switch(age)
    {
        case 12:
            cout << "you are 12 years old" <<endl;
            break;

        case 18:
            cout << "you are 18 years old" <<endl;
            break;

        default:
            cout << "You are neither 12 nor 18 years old" <<endl;
            break;
    }
    */

    //LOOPS

    //While loops
    /*int index = 0;
    while(index <= 34)
    {   cout << "We are at index number " <<index <<endl;
        index = index + 1;
    }
    */

    //Do While loops
    /*int index = 0;
    do{
        cout << "We are at index number " <<index <<endl;
        index = index + 1;

    }while(index > 34);
    */

    //For loops
    /*for(int i = 0; i < 34; i++)
    {
        cout << "The value of i is " << i << endl;
    }
    */

    //Function
    // add()
    /*int a, b;
    cout<<"Enter first number"<<endl;
    cin>>a;

    cout<<"Enter second Number"<<endl;
    cin>>b;

    cout<<"The function return "<<add(a, b)<<endl;
    */

    //ARRAYS

    // 1D array
    /*int arr[] = {3, 6, 9};
    //cout<<arr[0];

    int marks[6];
    for(int i = 0; i < 6; i++)
    {
        cout << "Enter the marks of " <<i+1<< "th student" <<endl;
        cin >> marks[i];
    }
    for(int i = 0; i < 6; i++)
    {
        cout << "Marks of " <<i+1<< "th student is: " <<marks[i] <<endl;
    }
    */

    // 2D array
    /*int arr2d[2][3] = {
        {1, 2, 3},
        {4, 5, 6}
    };

    for(int i = 0; i < 2; i++)
    {
        for(int j = 0; j < 3; j++)
        {
            cout << "The value at " <<i<<", "<<j<< ", " "is "<<arr2d[i][j]<<endl;
        }
    }
    */

    //Typecasting
    /*int a = 343;
    float b = 87.34;

    cout<<(float) a/34 <<endl;
    cout<<(int)b;
    */

    //STRING
    /*string name = "Romi";
    cout<<"The name is "<<name<<endl;
    cout<<"The name is "<<name.length()<<endl;
    cout<<"The name is "<<name.substr(0,3)<<endl;
    cout<<"The name is "<<name.substr(2,3)<<endl;
    */

    //POINTERS
    /*int a = 14;
    int * ptra;
    ptra = &a;
    cout<<"The address of *ptra is "<<ptra<<endl;
    cout<<"The address of a is "<<&a<<endl;
    cout<<"The value of a is "<<a<<endl;
    cout<<"The value of *ptra is "<<*ptra<<endl;
    */

    //Objects & Classes
    Employee har("Romi Constructor", 100, 32145);
    //har.name = "Romi";
    //har.salary = 100;
    har.printDetails();
    //cout<<har.secretPassword//not print
    har.getSecretPassword();
    /*cout<<"The name of our first employee is "<< har.name<<
    " and his salary is "<< har.salary <<" Dolars."<<endl;*/

    return 0;
}
