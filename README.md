# Proper Bootstrap

This project is about bootstrapping a x86_64 C compiler starting with only an
assembler.

# T0

This will, in some sense, be the trickiest generation of the compiler to write
as it will be my first significant project in pure assembly. Furthermore, since
I want to rely on as little existing tooling as possible, I need to start
writing a standard library of sorts. Basic string manipulation (compare,
size, copy, etc...), dynamic memory allocation, and some syscall wrappers
are a must. To avoid making this too difficult, I will probably version and 
iterate on the library itself. To keep library versions separate, I'll prefix
the functions with the compiler version (`t{0, 1, 2}_*`).
