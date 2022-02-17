/*
 * Is it possible to modify variables in general functions from outside using
 * the scope operator?
 */
#include <cstdlib>
#include <iostream>

// Attempt the overwrite
void attempt() {
    func::i = 2;
}

void func() {
    int i = 1;

    attempt();

    // What will be the output? 1? 2? Error?
    std::cout << i << std::endl;
}

int main() {
    func();

    return EXIT_SUCCESS;
}

// Result: functions don't come with namespaces - error
