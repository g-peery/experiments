#ifndef _HAS_DECLARATION_H
#define _HAS_DECLARATION_H

// We'll declare but not implement in source.
struct myStruct;

// We'll implement this in source
void printPhrase(myStruct obj);

#endif /* has_declaration.h */

/*
RESULT: error since the compiler needs to see more about the struct before
main.cc can compile.
*/
