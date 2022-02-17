/*
 * How does virtual interact with different pointer types?
 */
#include <cstdlib>
#include <iostream>
using namespace std;

// Largely copied from geeksforgeeks.org
class base {
public:
    virtual void print()
    {
        cout << "print base class\n";
    }
 
    void show()
    {
        cout << "show base class\n";
    }
};
 
class derived : public base {
public:
    void print()
    {
        cout << "print derived class\n";
    }
 
    void show()
    {
        cout << "show derived class\n";
    }
};
 
int main()
{
    base b;
    derived d;
 
    b.print(); // print base class
    b.show();  // show base class
    d.print(); // print derived class
    d.show();  // show derived class

    base b1 = d;

    b1.print(); // print base class
    b1.show();  // show base class

    //derived d1 = b; // error

    return EXIT_SUCCESS;
}

/* 
 * RESULTS: The type of the variable also determines the function called,
 * but now independent of "virtual"
 */
