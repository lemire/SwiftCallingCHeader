#Calling a C header from Swift (example) 

I could not find a simple example of Swift code calling a C header. So I made one.

Usage:

```
swift build
.build/debug/SomeSwift
```

## Explanation:

- Each subdirectory in "Sources" is effectively a subpackage.
- Create a package with your C code in it (``Sources/SomeC``).
- Create your Swift package (``Sources/SomeSwift``).
- Then establish a dependency in your ``Package.swift`` file : ``targets: [Target(name: "Bitset", dependencies: ["SwiftBitsetC"]),]``.
- In your C package, add an include directory with your header file. If you have C source code, put it directly in your C code package directory (``Sources/SomeC``). You need at least one source file (``somec.c``).
- In your Swift code, just do ``import SomeC`` and then you can call the C function as in ``SomeC.sayHello()``.

That's it!
