#include <cstdlib>
#include <cstdio>
#include "base.h"
#include "nice_child.h"
#include "bad_child.h"

using namespace std;

void oldTest() {
    // Initialize everything
    Base* baseObj = new Base;

    // Let's take a look around
    long* binaryInspect = reinterpret_cast<long*>(baseObj);

    printf("Inspecting near %p:\n", binaryInspect);
    for (long *i = binaryInspect; i < binaryInspect + 8; i++) {
        printf("0x%016lx", *i);
        if ((i - binaryInspect) % 4 == 3) printf("\n");
        else printf("  ");
    }
    printf("\n");

    // Output: flag, then something, 0, and 0x21

    // Closer look at 2nd item - guess is Cheshire pointer
    long** evenDeeper = reinterpret_cast<long**>(baseObj);
    printf("2nd item:\n0x%016lx\n", **(evenDeeper + 1));

    // Ouput: 0x111... - it's the Cheshire!

    // Next, let's see about the nice child
    NiceChild* nc = new NiceChild;

    binaryInspect = reinterpret_cast<long*>(nc);
    evenDeeper = reinterpret_cast<long**>(nc);

    printf("Inspecting near %p:\n", binaryInspect);
    for (long *i = binaryInspect; i < binaryInspect + 8; i++) {
        printf("0x%016lx", *i);
        if ((i - binaryInspect) % 4 == 3) printf("\n");
        else printf("  ");
    }
    printf("\n");

    // Output: flag, then something, 0, and 0x21

    // Closer look at 2nd item - guess is Cheshire pointer
    printf("2nd item:\n0x%016lx\n", **(evenDeeper + 1));

    // Ouput: 0x111... - it's the Cheshire!
    /* 
    We got exactly the same result, not even new constructors. Even the offset
    to the cheshire was 0x20 as before.
    */

    // Let's see what happens when a child messes with the Cheshire.
    BadChild* bc = new BadChild;
        
    binaryInspect = reinterpret_cast<long*>(bc);
    evenDeeper = reinterpret_cast<long**>(bc);

    printf("Inspecting near %p:\n", binaryInspect);
    for (long *i = binaryInspect; i < binaryInspect + 8; i++) {
        printf("0x%016lx", *i);
        if ((i - binaryInspect) % 4 == 3) printf("\n");
        else printf("  ");
    }
    printf("\n");

    // Similar results, and fields in order.
    // We'll need to try a new test after modifying the classes.
    // Before, Base had no "switchUp" member
}

template<class T> void inspectNear(T* ptr, int count=8) {
    // Cast
    long* inspectStart = reinterpret_cast<long*>(ptr);

    // Print info
    printf("Inspecting near %p:\n", inspectStart);
    for (long *i = inspectStart; i < inspectStart + count; i++) {
        printf("0x%016lx", *i);
        if ((i - inspectStart) % 4 == 3) printf("\n");
        else printf("  ");
    }
    printf("\n");
}

int main() {
    //oldTest()

    Base* base = new Base;
    NiceChild* nc = new NiceChild;
    BadChild* bc = new BadChild;

    printf("Initial:\n");
    inspectNear<Base>(base, 64);

    // Switch
    base->switchUp();
    nc->switchUp();
    bc->switchUp();

    printf("All switched:\n");
    inspectNear<Base>(base, 64);

    /*
    RESULT: In the BadChild, the 0x44... was replaced instead of 0x22... which
    suggests that the lines that manipulate the Cheshire are compiled to act at
    a set offset from the start of the Cheshire struct. There is no metadata on
    the names of the fields. However, it was still able to do *something* even
    though the Cheshire definition was changed.

    I will also note that since switchUp is not virtual, there is no pointer to
    it visible in the memory dump.
    */

    return EXIT_SUCCESS;
}
