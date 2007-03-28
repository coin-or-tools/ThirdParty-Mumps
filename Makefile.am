# Copyright (C) 2007 International Business Machines and others.
# All Rights Reserved.
# This file is distributed under the Common Public License.

## $Id$

AUTOMAKE_OPTIONS = foreign

EXTRA_DIST = get.mumps INSTALL.MUMPS

if SKIPMAKE
  noinst_LTLIBRARIES =
else
  noinst_LTLIBRARIES = libcoinmumps.la
endif

MUMPSDIR = @MUMPSDIR@

nodist_libcoinmumps_la_SOURCES = \
	$(MUMPSDIR)/src/dmumps_bloc2.F \
	$(MUMPSDIR)/src/dmumps_buffer.F \
	$(MUMPSDIR)/src/dmumps_cv.F \
	$(MUMPSDIR)/src/dmumps_cv_load.F \
	$(MUMPSDIR)/src/dmumps_ooc.F \
	$(MUMPSDIR)/src/dmumps_part1.F \
	$(MUMPSDIR)/src/dmumps_part2.F \
	$(MUMPSDIR)/src/dmumps_part3.F \
	$(MUMPSDIR)/src/dmumps_part4.F \
	$(MUMPSDIR)/src/dmumps_part5.F \
	$(MUMPSDIR)/src/dmumps_part6.F \
	$(MUMPSDIR)/src/dmumps_part7.F \
	$(MUMPSDIR)/src/dmumps_part8.F \
	$(MUMPSDIR)/src/dmumps_part9.F \
	$(MUMPSDIR)/src/dmumps_struc_def.F \
	$(MUMPSDIR)/src/dmumps_c.c \
	$(MUMPSDIR)/src/dmumps_io_basic.c \
	$(MUMPSDIR)/src/dmumps_io.c \
	$(MUMPSDIR)/src/dmumps_io_err.c \
	$(MUMPSDIR)/src/dmumps_io_thread.c \
	$(MUMPSDIR)/src/dmumps_orderings.c \
	$(MUMPSDIR)/libseq/mpi.f \
	$(MUMPSDIR)/libseq/mpic.c \
	$(MUMPSDIR)/libseq/elapse.c


DEFAULT_INCLUDES = -I. -I`$(CYGPATH_W) $(srcdir)`

AM_CPPFLAGS = -I`$(CYGPATH_W) $(srcdir)/$(MUMPSDIR)/src` \
	-I`$(CYGPATH_W) $(srcdir)/$(MUMPSDIR)/libseq` \
	-I`$(CYGPATH_W) $(srcdir)/$(MUMPSDIR)/include`


libcoinmumps_la_LDFLAGS = $(LT_LDFLAGS)

# Some dependecies for modules:
dmumps_cv_load.lo dmumps_ooc.lo dmumps_part1.lo dmumps_part2.lo \
dmumps_part3.lo dmumps_part4.lo dmumps_part5.lo dmumps_part6.lo \
dmumps_part7.lo dmumps_part8.lo: dmumps_struc_def.lo

dmumps_part3.lo dmumps_part5.lo: dmumps_cv.lo

dmumps_part1.lo dmumps_part2.lo dmumps_part3.lo dmumps_part4.lo \
dmumps_part5.lo dmumps_part6.lo: dmumps_cv_load.lo

dmumps_cv_load.lo dmumps_part1.lo dmumps_part2.lo dmumps_part3.lo \
dmumps_part4.lo dmumps_part5.lo dmumps_part6.lo dmumps_part7.lo: \
dmumps_buffer.lo

dmumps_part1.lo dmumps_part2.lo dmumps_part3.lo dmumps_part4.lo \
dmumps_part5.lo dmumps_part6.lo dmumps_part7.lo: dmumps_ooc.lo

# Module files that need to be deleted
MODEXT = mod
CLEANFILES = *.$(MODEXT)

# Reset DEFS to that they don't show up for the Fortran compiler
DEFS =
CFLAGS += $(MY_DEFS)

########################################################################
#                         Maintainer Stuff                             #
########################################################################

# Files that are generated and should be cleaned with make distclean
DISTCLEANFILES = $(MAKEOKFILE)

include ../../BuildTools/Makemain.inc
