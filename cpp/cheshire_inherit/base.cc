#include "base.h"

struct Base::Cheshire {
    long firstField;
};

// Constructor
Base::Base() {
    // Allocate space for Cheshire.
    smile = new Cheshire;

    // Set the first field
    smile->firstField = 0x1111111111111111;
}

// Destructor
Base::~Base() {
    // Free memory
    delete smile;
}

// Only manipulate the first field
void Base::switchUp() {
    // Now it is like "AAAAAAAA"
    smile->firstField = 0x4141414141414141;
}
