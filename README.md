![popen-fortran](media/logo.png)
============

Simple Fortran module for `popen`.

[![GitHub release](https://img.shields.io/github/release/jacobwilliams/popen-fortran.svg?style=plastic)](https://github.com/jacobwilliams/popen-fortran/releases/latest)
[![Build Status](https://github.com/jacobwilliams/popen-fortran/actions/workflows/CI.yml/badge.svg)](https://github.com/jacobwilliams/popen-fortran/actions)
[![codecov](https://codecov.io/gh/jacobwilliams/popen-fortran/branch/master/graph/badge.svg?token=BHtd51oUTE)](https://codecov.io/gh/jacobwilliams/popen-fortran)

### Example

The library provides a routine `get_command_as_string` which can be used like so:

```fortran
program main

  use popen_module, only: get_command_as_string

  implicit none
  character(len=:),allocatable :: res

  res = get_command_as_string('ls -l')

  write(*,'(A)') res

end program main
```

### Documentation
The latest API documentation can be found [here](https://jacobwilliams.github.io/popen-fortran/). This was generated from the source code using [FORD](https://github.com/Fortran-FOSS-Programmers/ford) (i.e. by running `ford ford.md`).

### Compiling

The library can be compiled with recent versions the Intel Fortran Compiler and GFortran (and presumably any other Fortran compiler that supports modern standards).

A `fpm.toml` file is provided for compiling popen-fortran with the [Fortran Package Manager](https://github.com/fortran-lang/fpm). For example, to build:

```
fpm build --profile release
```

To run the unit tests:

```
fpm test --profile release
```

To use `popen-fortran` within your fpm project, add the following to your `fpm.toml` file:
```toml
[dependencies]
popen-fortran = { git="https://github.com/jacobwilliams/popen-fortran.git" }
```

or, to use a specific version:
```toml
[dependencies]
popen-fortran = { git="https://github.com/jacobwilliams/popen-fortran.git", tag = "1.0.0"  }
```

### See also
 * [Fortran & C Interoperability](https://degenerateconic.com/fortran-c-interoperability.html) [degenerateconic.com] (2014)
 * [C interop to popen](https://groups.google.com/forum/#!topic/comp.lang.fortran/gRmQZgcMkaY), comp.lang.fortran, 12/2/2009.
 * [M_process](https://github.com/urbanjost/M_process) Read or write to a process from Fortran via a C wrapper
