#include <iostream>
#include "has_declaration.h"

using namespace std;

// Implementation of printing
void printPhrase(StructContainer obj) {
    cout << obj.instance->phrase << endl;
}
