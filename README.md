# ThirdParty-Mumps

This is an autotools-based build system to build and install
[MUltifrontal Massively Parallel sparse direct Solver](http://mumps.enseeiht.fr/) (MUMPS).
This installation of MUMPS is used by some other COIN-OR projects.

This version of ThirdParty-Mumps retrieves and builds MUMPS 4.10.0,
which is at the moment still the MUMPS version that is prefered by
COIN-OR projects like [Ipopt](https://github.com/coin-or/Ipopt).
The [branch `mumps5`](https://github.com/coin-or-tools/ThirdParty-Mumps/tree/mumps5)
includes a system to build some recent MUMPS 5.x version.

## NOTE for GFortran 10 users

- MUMPS source does not compile out of the box when using GFortran 10, probably
  due to some incompatibilities between assumed Fortran language standards,
  see also [issue #4](https://github.com/coin-or-tools/ThirdParty-Mumps/issues/4).
  A possible workaround is to call `configure` with the additional
  argument `ADD_FCFLAGS=-fallow-argument-mismatch`.

## Installation steps

1. Obtain the MUMPS source code.

   **********************************************************************
   Note: It is YOUR RESPONSIBILITY to ensure that you are entitled to
         download and use this third party package.
   **********************************************************************

   The shell script `get.Mumps` can be used to automatically download and
   extract the correct version of the MUMPS source code. The script will
   first try to download from from https://coin-or-tools.github.io/ThirdParty-Mumps.
   If this fails, it will attempt to download from the MUMPS website: http://mumps.enseeiht.fr/

   The script requires wget, curl, or fetch to be available on the system
   and in the shells search path (`$PATH`).

2. Run `./configure`. Use `./configure --help` to see available options.
   If using GFortran 10, add `ADD_FCFLAGS=-fallow-argument-mismatch` to
   your configure call (see above)

3. Run `make` to build the MUMPS library.

4. Run `make install` to install the MUMPS library and header files.
