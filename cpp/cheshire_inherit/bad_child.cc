#include "bad_child.h"

// Add a field and reorder
struct BadChild::Cheshire {
    long secondField;
    long firstField;
};

// Constructor
BadChild::BadChild() {
    // Note Base() called implicilty, Cheshire allocated

    // Set the fields
    smile->firstField = 0x2222222222222222;
    smile->secondField = 0x4444444444444444;
}
