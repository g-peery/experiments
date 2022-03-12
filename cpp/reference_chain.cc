#include <cstdlib>
#include <iostream>

using namespace std;

int main() {
    //--------------------------------------------------------------------------
    // EXPERIMENT
    // Setup:
    int a = 100;
    int& ar = a;
    int& arr = ar;
    int& arrr = arr;

    cout << a << " " << ar << " " << arr << " " << arrr << endl;

    a++;ar++;arr++;arrr++;

    cout << a << " " << ar << " " << arr << " " << arrr << endl;

    // Prediction:
    // 100 100 100 100
    // 104 104 104 104

    // Result: Worked as expected
    //--------------------------------------------------------------------------

    return EXIT_SUCCESS;
}
