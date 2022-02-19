#ifndef _HAS_DECLARATION_H
#define _HAS_DECLARATION_H

// We'll declare but not implement in source.
class StructContainer {
public:
    struct innerStruct;
    innerStruct* instance;
};

// We'll implement this in source
void printPhrase(StructContainer obj);

#endif /* has_declaration.h */

/*
RESULT: Error in compiling has_declaration.o because printPhrase uses a member
of StructContainer without it having been encountered yet. It can't be put off
to the linking stage.
*/
