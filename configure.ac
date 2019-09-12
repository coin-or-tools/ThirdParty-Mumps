# Copyright (C) 2007-2009 International Business Machines.
# All Rights Reserved.
# This file is distributed under the Eclipse Public License.

# Author:  Andreas Waechter            IBM    2006-04-13

#############################################################################
#                       Names and other basic things                        #
#############################################################################

AC_PREREQ(2.59)

AC_INIT([ThirdPartyMumps],[trunk],[https://github.com/coin-or-tools/ThirdParty-Mumps/issues/new],,[https://github.com/coin-or-tools/ThirdParty-Mumps])

AC_COPYRIGHT([
Copyright 2007-2009 International Business Machines and others.
All Rights Reserved.
This file is part of the open source package Coin which is distributed
under the Eclipse Public License.])

# List one file in the package so that the configure script can test
# whether the package is actually there
AC_CONFIG_SRCDIR(MUMPS/src/mumps_common.c)

AC_COIN_INITIALIZE(Mumps)

#############################################################################
#                         Standard build tool stuff                         #
#############################################################################

# Get the name of the C compiler and appropriate compiler options
AC_COIN_PROG_CC

# Get the name of the Fortran compiler and appropriate compiler options
AC_COIN_PROG_FC

# Initialize libtool
AC_COIN_PROG_LIBTOOL(no-win32-dll)

# Add FLIBS to MUMPS_LFLAGS, so that they get into the .pc files section for static builds
MUMPS_LFLAGS="$MUMPS_LFLAGS $FLIBS"

# Figure out name mangling that Fortran objects will have and translate
# them to what MUMPS wants
AC_FC_WRAPPERS
case "$ac_cv_fc_mangling" in
  "lower case, no underscore, no extra underscore" ) ;;
  "lower case, underscore, no extra underscore" )    MY_DEFS="-DAdd_" ;;
  "lower case, no underscore, extra underscore" )    MY_DEFS="-DAdd_" ;;
  "lower case, underscore, extra underscore" )       MY_DEFS="-DAdd__" ;;
  "upper case, no underscore, no extra underscore" ) MY_DEFS="-DUPPER" ;;
  "upper case, no underscore, extra underscore" )    MY_DEFS="-DUPPER" ;;
  "upper case, underscore, no extra underscore" )    MY_DEFS="-DUPPER" ;;
  "upper case, underscore, extra underscore" )       MY_DEFS="-DUPPER" ;;
esac

# Mumps can make use of pthreads
# check for pthread.h header file and library
# TODO enable by default
AC_ARG_ENABLE([pthread-mumps],
  [AC_HELP_STRING([--enable-pthread-mumps],[enable use of pthread library])],
  [enable_pthread_mumps=$enableval],
  [enable_pthread_mumps=no])
if test $enable_pthread_mumps = yes ; then
  AC_CHECK_HEADER([pthread.h],[],[enable_pthread_mumps=no])
fi
if test $enable_pthread_mumps = yes ; then
  AC_CHECK_LIB([pthread],[pthread_create],
    [MUMPS_LFLAGS="$MUMPS_LFLAGS -lpthread"],
    [enable_pthread_mumps=no])
fi
if test $enable_pthread_mumps = no ; then
  MY_DEFS="$MY_DEFS -DWITHOUT_PTHREAD=1"
fi

MY_DEFS="$MY_DEFS -DMUMPS_ARITH=MUMPS_ARITH_d"
AC_SUBST(MY_DEFS)

AC_COIN_CHK_LAPACK(MUMPS)

# TODO If the BLAS library includes the GEMMT level-3 BLAS extension, we strongly recommend to use it.
# -DGEMMT_AVAILABLE should then be added to the OPTF variable of your Makefile.inc. 

AC_COIN_CHK_PKG(Metis,[MUMPS],[coinmetis],[build])
if test "$coin_has_metis" = yes; then
  MY_DEFS="$MY_DEFS -Dmetis4"
  MY_FDEFS="$MY_FDEFS -Dmetis4"
fi

# Fix Fortran preprocessor flags
case $FC in
  *xlf*)
    fdefs=
    if test -n "$MY_FDEFS"; then
      for flag in $MY_FDEFS; do
        fdefs="$fdefs -WF,$flag"
      done
    fi
    MY_FDEFS="$fdefs"
    ;;
esac
AC_SUBST(MY_FDEFS)

AC_MSG_NOTICE([additional C preprocessor flags: $MY_DEFS])
AC_MSG_NOTICE([additional Fortran preprocessor flags: $MY_FDEFS])

AC_CONFIG_FILES([Makefile coinmumps.pc])

AC_COIN_FINALIZE_FLAGS([MUMPS])
AC_COIN_FINALIZE
