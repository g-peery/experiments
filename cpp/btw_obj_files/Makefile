will_i_compile: main.o has_implementation.o has_declaration.o
	g++ -o $@ $^

main.o: main.cc
	g++ -c $@ $^

has_implementation.o: has_implementation.cc
	g++ -c $@ $^

has_declaration.o: has_declaration.cc
	g++ -c $@ $^
