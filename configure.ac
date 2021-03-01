# Copyright (C) 2007-2009 International Business Machines.
# All Rights Reserved.
# This file is distributed under the Eclipse Public License.
#
# Author:  Andreas Waechter            IBM    2006-04-13

#############################################################################
#                       Names and other basic things                        #
#############################################################################

AC_INIT([ThirdPartyMumps],[2.1.0],[https://github.com/coin-or-tools/ThirdParty-Mumps/issues/new],,[https://github.com/coin-or-tools/ThirdParty-Mumps])

AC_COPYRIGHT([
Copyright 2007-2009 International Business Machines and others.
All Rights Reserved.
This file is part of the open source package Coin which is distributed
under the Eclipse Public License.])

# List one file in the package so that the configure script can test
# whether the package is actually there
AC_CONFIG_SRCDIR(MUMPS/src/dmumps_part1.F)

AC_COIN_INITIALIZE

#############################################################################
#                         Standard build tool stuff                         #
#############################################################################

# Get the name of the C compiler and appropriate compiler options
AC_COIN_PROG_CC

# Get the name of the Fortran compiler and appropriate compiler options
AC_COIN_PROG_FC
if test -z "$FC" ; then
  AC_MSG_ERROR([No Fortran 90 compiler found. Try setting environment variable FC.])
fi

# Initialize libtool
AC_COIN_PROG_LIBTOOL

# Figure out name mangling that Fortran objects will have and translate
# them to what MUMPS wants, this also includes AC_FC_LIBRARY_LDFLAGS
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

# Add FCLIBS to MUMPS_LFLAGS, so that they get into the .pc files section for static builds
MUMPS_LFLAGS="$MUMPS_LFLAGS $FCLIBS"

# Mumps can make use of pthreads
# check for pthread.h header file and library
AC_ARG_ENABLE([pthread-mumps],
  [AC_HELP_STRING([--disable-pthread-mumps],[disable use of pthread library])],
  [enable_pthread_mumps=$enableval],
  [enable_pthread_mumps=yes])
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

MY_DEFS="$MY_DEFS -DALLOW_NON_INIT -DMUMPS_ARITH=MUMPS_ARITH_d"
AC_SUBST(MY_DEFS)

AC_COIN_CHK_LAPACK(MUMPS)
if test $coin_has_lapack != yes; then
  AC_MSG_ERROR([Required package LAPACK not found.])
fi

AC_COIN_CHK_LIBM(METISCHECK)
AC_LANG_PUSH(C)
AC_COIN_CHK_LIBHDR(Metis,[MUMPS],[-lmetis "$METISCHECK_LFLAGS"],[],[],
  [METIS_Free((void*)0);],
  [#include "metis.h"])
AC_LANG_POP(C)

# check whether we can redefine metis_nodend to cmets_nodend from metis_adapter
if test $coin_has_metis = yes ; then
  AC_FC_PP_DEFINE([],[coin_has_metis=no])
fi
AM_CONDITIONAL(COIN_HAS_METIS, [test $coin_has_metis = yes])

if test "$coin_has_metis" = yes; then
  MY_DEFS="$MY_DEFS -Dmetis"
  MY_FDEFS="$MY_FDEFS -Dmetis"
fi

# Fix Fortran preprocessor flags
# Add workaround for incompatibility with Fortran 2003 (https://github.com/coin-or-tools/ThirdParty-Mumps/issues/4)
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
  *gfortran*)
    MY_FDEFS="$MY_FDEFS -std=legacy"
    ;;
esac
AC_SUBST(MY_FDEFS)

AC_COIN_FINALIZE_FLAGS([MUMPS])

# if libexport_attribute is set by COIN_FINALIZE_FLAGS to __declspec(dllimport)
# then we want to use MUMPS_CALL=__declspec(dllexport) when building Mumps
# and users should use __declspec(dllimport), but the parenthesis are difficult
# to pass on via compiler flags
# so also create and install our own version of mumps_compat.h instead
if test "$libexport_attribute" = "__declspec(dllimport)" ; then
  MY_DEFS="$MY_DEFS -DMUMPS_CALL=\"__declspec(dllexport)\""
fi
AC_DEFINE_UNQUOTED(MUMPS_CALL, [$libexport_attribute], [Library Visibility Attribute])

AC_MSG_NOTICE([additional C preprocessor flags: $MY_DEFS])
AC_MSG_NOTICE([additional Fortran preprocessor flags: $MY_FDEFS])

AC_CONFIG_FILES([Makefile coinmumps.pc])
AC_CONFIG_HEADER(config.h mumps_compat.h)

AC_COIN_FINALIZE
