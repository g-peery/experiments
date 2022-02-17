/*
 * Is it possible to modify variables in the main function from outside using
 * the scope operator?
 */
#include <cstdlib>
#include <iostream>

// Attempt the overwrite
void attempt() {
    main::i = 2;
}

int main() {
    int i = 1;

    attempt();

    // What will be the output? 1? 2? Error?
    std::cout << i << std::endl;

    return EXIT_SUCCESS;
}

// Result: the main function doesn't have a namespace - error
