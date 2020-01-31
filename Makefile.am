# Copyright (C) 2007-2010 International Business Machines and others.
# All Rights Reserved.
# This file is distributed under the Eclipse Public License.

AUTOMAKE_OPTIONS = foreign subdir-objects

EXTRA_DIST = get.Mumps INSTALL.MUMPS

lib_LTLIBRARIES = libcoinmumps.la

nodist_libcoinmumps_la_SOURCES = \
	MUMPS/src/tools_common_mod.F \
	MUMPS/src/dmumps_comm_buffer.F \
	MUMPS/src/dmumps_struc_def.F \
	MUMPS/src/mumps_ooc_common.F \
	MUMPS/src/mumps_static_mapping.F \
	MUMPS/src/dmumps_ooc_buffer.F \
	MUMPS/src/dmumps_load.F \
	MUMPS/src/dmumps_ooc.F \
	MUMPS/src/dmumps_part1.F \
	MUMPS/src/dmumps_part2.F \
	MUMPS/src/dmumps_part3.F \
	MUMPS/src/dmumps_part4.F \
	MUMPS/src/dmumps_part5.F \
	MUMPS/src/dmumps_part6.F \
	MUMPS/src/dmumps_part7.F \
	MUMPS/src/dmumps_part8.F \
	MUMPS/src/mumps_part9.F \
	MUMPS/src/mumps_sol_es.F \
	MUMPS/src/mumps_c.c \
	MUMPS/src/mumps_common.c \
	MUMPS/src/mumps_orderings.c \
	MUMPS/src/mumps_io.c \
	MUMPS/src/mumps_io_basic.c \
	MUMPS/src/mumps_io_thread.c \
	MUMPS/src/mumps_io_err.c \
	MUMPS/src/mumps_size.c \
	MUMPS/libseq/mpi.f \
	MUMPS/libseq/mpic.c \
	MUMPS/libseq/elapse.c

AM_CPPFLAGS = -I$(srcdir)/MUMPS/src -I$(srcdir)/MUMPS/libseq -I$(srcdir)/MUMPS/include

libcoinmumps_la_LIBADD = $(MUMPS_LFLAGS)

libcoinmumps_la_LDFLAGS = $(LT_LDFLAGS)

# Some dependecies for modules:
MUMPS/src/dmumps_load.lo MUMPS/src/dmumps_part1.lo MUMPS/src/dmumps_part2.lo MUMPS/src/dmumps_part3.lo \
MUMPS/src/dmumps_part4.lo MUMPS/src/dmumps_part5.lo MUMPS/src/dmumps_part6.lo MUMPS/src/dmumps_part8.lo: \
  MUMPS/src/dmumps_comm_buffer.lo

MUMPS/src/dmumps_part1.lo MUMPS/src/dmumps_part2.lo MUMPS/src/dmumps_part3.lo \
MUMPS/src/dmumps_part4.lo MUMPS/src/dmumps_part5.lo MUMPS/src/dmumps_part6.lo: MUMPS/src/dmumps_load.lo

MUMPS/src/dmumps_part1.lo MUMPS/src/dmumps_ooc.lo: MUMPS/src/dmumps_ooc_buffer.lo

MUMPS/src/dmumps_part1.lo MUMPS/src/dmumps_part2.lo MUMPS/src/dmumps_part3.lo MUMPS/src/dmumps_part4.lo \
MUMPS/src/dmumps_part5.lo MUMPS/src/dmumps_part6.lo MUMPS/src/dmumps_part8.lo: MUMPS/src/dmumps_ooc.lo

MUMPS/src/dmumps_part1.lo MUMPS/src/dmumps_part5.lo: MUMPS/src/dmumps_part2.lo

MUMPS/src/dmumps_load.lo MUMPS/src/dmumps_ooc.lo MUMPS/src/dmumps_part1.lo MUMPS/src/dmumps_part2.lo MUMPS/src/dmumps_part3.lo \
MUMPS/src/dmumps_part4.lo MUMPS/src/dmumps_part5.lo MUMPS/src/dmumps_part7.lo MUMPS/src/dmumps_part8.lo: \
MUMPS/src/dmumps_struc_def.lo

MUMPS/src/dmumps_ooc_buffer.lo MUMPS/src/dmumps_ooc.lo: MUMPS/src/mumps_ooc_common.lo

MUMPS/src/dmumps_part5.lo MUMPS/src/dmumps_ooc.lo: MUMPS/src/mumps_static_mapping.lo

MUMPS/src/dmumps_part2.lo MUMPS/src/dmumps_part5.lo MUMPS/src/dmumps_part8.lo: MUMPS/src/tools_common_mod.lo MUMPS/src/mumps_sol_es.lo

# Module files that need to be deleted
CLEANFILES = *.mod

CFLAGS += $(MY_DEFS) $(MUMPS_CFLAGS)
FCFLAGS += $(MY_FDEFS)

# automake thinks that the .F files are F77, not FC, and requires F77 to be set
# set it to FC, and same for FFLAGS
F77 = $(FC)
FFLAGS = $(FCFLAGS)

thirdpartyincludedir = $(includedir)/coin-or/mumps
thirdpartyinclude_HEADERS = \
  MUMPS/include/dmumps_c.h \
  MUMPS/include/mumps_c_types.h \
  MUMPS/libseq/mumps_mpi.h \
  mumps_compat.h

pkgconfiglibdir = $(libdir)/pkgconfig
pkgconfiglib_DATA = coinmumps.pc

########################################################################
#                         Maintainer Stuff                             #
########################################################################

# Files that are generated and should be cleaned with make distclean
DISTCLEANFILES =
