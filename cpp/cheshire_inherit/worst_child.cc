#include "worst_child.h"

// Add a field and reorder
struct WorstChild::Cheshire {
    long manyFields[16];
};

// Constructor
WorstChild::WorstChild() {
    // Note Base() called implicilty, Cheshire allocated.
    // ...or is it? >:)

    // Set the fields
    // Mostly the same, but with a 1 in there to indicate
    for (int i = 0; i < 16; i++)
        smile->manyFields[i] = i * 0x1111011111111111 + 0x100000000000;
}
