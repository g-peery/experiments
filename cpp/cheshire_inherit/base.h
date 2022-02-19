#ifndef _BASE_H
#define _BASE_H
// We'll create a base class using the Cheshire Cat technique
class Base {
    long flag = 0xAAAAAAAAAAAAAAAA; // To signal in binary
protected:
    struct Cheshire;
    Cheshire* smile;
public:
    Base();
    ~Base();
    void switchUp(); // Manipulate Cheshire data
};

/*
QUESTION: What happens to the Cheshire when it is redefined in inherited
classes?

RESULT:
*/
#endif // base.h
