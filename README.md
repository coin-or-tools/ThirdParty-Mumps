# ThirdParty-Mumps

This is an autotools-based build system to build and install
[MUltifrontal Massively Parallel sparse direct Solver](http://mumps.enseeiht.fr/) (MUMPS).
This installation of MUMPS is used by some other COIN-OR projects.

This version of ThirdParty-Mumps retrieves and builds MUMPS 5.3.1.

## NOTE for GFortran 10 users

MUMPS source does not compile out of the box when using GFortran 10, probably
due to some incompatibilities between assumed Fortran language standards,
see also [issue #4](https://github.com/coin-or-tools/ThirdParty-Mumps/issues/4).

A possible workaround is to call `configure` with the additional
argument `ADD_FCFLAGS=-fallow-argument-mismatch`.

## Dependencies

- MUMPS source requires a Fortran 90 compiler.

- MUMPS requires LAPACK to be available. `configure` will look for a Lapack
  installation, but if that does not succeed, the flags to link with Lapack
  should be specified with the `--with-lapack-lflags` argument of `configure`.

- MUMPS can make use of METIS. `configure` will look for a METIS library and
  header, but if that does not succeed, the arguments `--with-metis-lflags`
  and `--with-metis-cflags` can be specified for `configure`.

  Both Metis 4 and Metis 5 can be used with ThirdParty-Mumps.

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
