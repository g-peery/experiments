/*
 * Can we use binary exploitation to retrieve private members?
 */
#include <cstdlib>
#include <iostream>
using namespace std;

class SecretHolder {
    long secretNum = 0x1337;
public:
    void printSecret();
};

void SecretHolder::printSecret() {
    cout << secretNum << endl;
}
 
int main()
{
    SecretHolder sh;

    // Make sure it isn't optimized away too easily
    sh.printSecret();
    cout << endl;

    // Display raw information
    long* realData = reinterpret_cast <long*>(&sh);
    for (long* i = realData; i < realData + 3; i++) printf("%lx\n", *i);
    cout << endl;

    // Can we modify as expected?
    *realData = 0xDEADBEEF;
    sh.printSecret();

    return EXIT_SUCCESS;
}

/* 
 * RESULTS: 1337 is printed first in the probing block, followed by what appear
 * to be addresses of functions. printSecret() and the constructor perhaps? The
 * modification was also successful.
 */
