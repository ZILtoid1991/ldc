/**
 * Contains compiler-recognized special symbols for LLVM types.
 *
 * Copyright: Authors 2025
 * License:   $(LINK2 http://www.boost.org/LICENSE_1_0.txt, Boost License 1.0)
 * Authors:   Laszlo Szeremi
 */

module ldc.llvmtypes;

/++
 + This struct exposes address space pointers to D.
 +/
struct AddrSpPtr(int addrSpace, T)
{
    T* ptr;
    alias ptr this;
}
///Currently recognized address spaces.
enum KnownAddrSpaces {
    //WASM related types begin
    ExternRef   =   10,
    FuncRef     =   20,
    //WASM related types end
}
