#include <cstdlib>
#include <iostream>

using namespace std;

int main() {
    // Will it work?
    // int a = 3, b = 1, c = -1, d = 77, e=-1000;

    // int& ref_array[5]; - NO
    // int& ra[5] = {a, b, c, d, e}; // - references aren't objs; no storage

    // cout << a << b << c << d << e << endl;

    //--------------------------------------------------------------------------
    // EXPERIMENT
    // Setup:
    int reg_array[] = { 1, 2, 3 };
    int& ar = reg_array[0];
    int& br = reg_array[1];
    int& cr = reg_array[2];

    cout << ar << br << cr << endl;

    ar++; br--; cr *= 2;

    cout << ar << br << cr << endl;
    cout << reg_array[0] << reg_array[1] << reg_array[2] << endl;

    for(int i = 0; i < 3; i++) reg_array[i]++;

    cout << ar << br << cr << endl;
    cout << reg_array[0] << reg_array[1] << reg_array[2] << endl;

    // Prediction:
    // 123
    // 216
    // 216
    // 327
    // 327

    // Result: Worked as expected
    //--------------------------------------------------------------------------

    return EXIT_SUCCESS;
}
