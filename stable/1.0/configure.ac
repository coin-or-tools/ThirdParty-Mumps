# Copyright (C) 2007 International Business Machines.
# All Rights Reserved.
# This file is distributed under the Common Public License.

## $Id$

# Author:  Andreas Waechter            IBM    2006-04-13

#############################################################################
#                       Names and other basic things                        #
#############################################################################

AC_PREREQ(2.59)

AC_INIT([ThirdPartyMumps],[1.0stable],[http://projects.coin-or.org/BuildTools/newticket])

AC_COPYRIGHT([
Copyright 2007 International Business Machines and others.
All Rights Reserved.
This file is part of the open source package Coin which is distributed
under the Common Public License.])

# List one file in the package so that the configure script can test
# whether the package is actually there
AC_CONFIG_SRCDIR(MUMPS/src/dmumps_part1.F)

# Where should everything be installed by default?  Here, we want it
# to be installed directly in 'bin', 'lib', 'include' subdirectories
# of the directory where configure is run.  The default would be
# /usr/local.
AC_PREFIX_DEFAULT([`pwd`])

AC_COIN_PROJECTDIR_INIT

#############################################################################
#                         Standard build tool stuff                         #
#############################################################################

# Get the system type
AC_CANONICAL_BUILD

# Check if user wants to produce debugging code
AC_COIN_DEBUG_COMPILE(Mumps)

# Get the name of the C compiler
AC_COIN_PROG_CC

# Get the name of the Fortran compiler and appropriate compiler options
AC_COIN_PROG_F77

# Find out how to call Fortran from C and determine Fortran runtime libraries
AC_COIN_F77_WRAPPERS

# We need to translate the result from autoconf to what MUMPS wants
case "$ac_cv_f77_mangling" in
  "lower case, no underscore, no extra underscore")
  ;;
  "lower case, underscore, no extra underscore")
  MY_DEFS="-DAdd_"
  ;;
  "lower case, no underscore, extra underscore")
  MY_DEFS="-DAdd_"
  ;;
  "lower case, underscore, extra underscore")
  MY_DEFS="-DAdd__"
  ;;
  "upper case, no underscore, no extra underscore")
  MY_DEFS="-DUPPER"
  ;;
  "upper case, no underscore, extra underscore")
  MY_DEFS="-DUPPER"
  ;;
  "upper case, underscore, no extra underscore")
  MY_DEFS="-DUPPER"
  ;;
  "upper case, underscore, extra underscore")
  MY_DEFS="-DUPPER"
  ;;
esac
MY_DEFS="$MY_DEFS -DALLOW_NON_INIT"
AC_SUBST(MY_DEFS)

# Initialize automake
AC_COIN_INIT_AUTO_TOOLS

## Check if Mumps is already provided by user
AC_COIN_HAS_MUMPS

# Verify that we can compile Fortran 90 code
if test "$use_mumps" = BUILD; then
  AC_MSG_CHECKING([whether we can compile Fortran 90 code])
  AC_LANG_PUSH(Fortran 77)
  AC_COMPILE_IFELSE([        MODULE BLA
        DOUBLE PRECISION, DIMENSION(:), ALLOCATABLE :: BLUBB
        END MODULE BLA],[can_f90=yes],[can_f90=no])
  AC_MSG_RESULT([$can_f90])
  AC_LANG_POP(Fortran 77)
  if test $can_f90 = no; then
    AC_MSG_WARN([Your Fortran compiler can't compile Fortran 90, I will not compile MUMPS])
    use_mumps=
  fi
fi

rm -f $MAKEOKFILE
if test $coin_has_mumps = yes && test "$use_mumps" != BUILD; then
  AC_MSG_NOTICE([The Mumps sources don't need to be compiled])
  MAKEOKFILE=
else
  touch $MAKEOKFILE
fi
AC_SUBST(MAKEOKFILE)
AM_CONDITIONAL(SKIPMAKE, test -z "$MAKEOKFILE")

MUMPSDIR=MUMPS
AC_SUBST(MUMPSDIR)

AC_CONFIG_FILES([Makefile])

AC_COIN_FINALIZE
