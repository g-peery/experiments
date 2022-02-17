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
    base *bptr;
    derived *dptr;

    base b;
    derived d;

    bptr = &d;
    dptr = &d;
 
    bptr->print(); // print derived class
    bptr->show();  // show base class
    dptr->print(); // print derived class
    dptr->show();  // show derived class

    bptr = &b;
    //dptr = &b; // invlaid conversion error
 
    bptr->print(); // print base class
    bptr->show();  // show base class
    //dptr->print();
    //dptr->show();
   
    return EXIT_SUCCESS;
}

/* 
 * RESULTS: base class behaves as expected. It appears that the type of a
 * pointer determines which of an overridden function will be called *unless*
 * the member function is declared virtual. If it is virtual, then the pointer
 * type will not matter.
 *
 * QUESTIONS: I used objdump to take a look at generated assembly, and I would
 * like to know more about the exact result of all this. There are instructions
 * that seem to correspond to runtime resolution like "call *%rax", but some
 * which are absolute.
 */
