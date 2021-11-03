# libcstr - C string library
* [Introduction](`#Introduction`)
* [Inspiration](`#Inspiration`)
* [Features](`#Features`)
* [Structure](`#Structure`)
* [Usage](`#Usage`)
* [API](`#API`)
* [Contribution](`#Contribution`)

## Introduction
`libcstr` is a library to manage C-style null-terminated string. It is written as a part of `FFABC`'s argument parsing library, `fparg`. 
`libcstr` is released under GPL license (v3 or later).

## Inspiration
This library take many idea ~~and code~~ from [sds](https://github.com/antirez/sds) and [stricks](https://github.com/alcover/stricks). However, `libcstr` is still implemented independently

## Features
`libcstr` implement most of C++ `std::string` functionality (up to c++11), while still retain the performance of C null-terminated string, including:
* Compability with C standard library string examination function, means you can use `libcstr`-provided string type as argument for those functions
* Freely access `char*` array member(s)
* Append, copy, remove, manipulate string
* Developer can freely modify the functionality with `cstr_cfg.h`, which are generated from template file [cstr_cfg.h.in](`#cstr_cfg.h.in`)`.

## Structure
`libcstr`-provided string type, `cstr_t` is basically `char*`, but its structure are:
```
    +---------------------------------------------------+
    | Metadata | `char` array . . .    | Null terminator|
    +----------+-----------------------+----------------+
               |-> This is the pointer provided to developer 's location
```

As of `sds` and `stricks` library, metadata are stored in a header whose location right before pointer return to developer. Every string allocated are terminate with a '\0', no matter whether the real content include a '\0'.

## Usage

### Generate a new string
`libcstr` provided 4 function: `ncstrnew()`, `ncstrdup()`, `ncstrgdup()` and `nfcstrdup()`.
```cpp
    cstr_t s;
    s = ncstrnew(12);
    //or
    s0 = ncstrdup(s);
    //or
    s1 = ncstrgdup("Never gonna give you up\n");
    //or even better
    s2 = nfcstrdup("%s version %s", "libcstr", "0.0.1");

```
