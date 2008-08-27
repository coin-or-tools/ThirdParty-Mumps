#!/bin/sh

# Set the following to the latest MUMPS version.
#  THERE MUST BE NO SPACE BEFORE AND AFTER THE EQUAL (=) OPERATOR.
mumps_ver=4.8.1

set -e

wgetcmd=wget
wgetcount=`which wget 2>/dev/null | wc -w`
if test ! $wgetcount = 1; then
  echo "Utility wget not found in your PATH."
  if test `uname` = Darwin; then
    wgetcmd=ftp
    echo "Using ftp command instead."
  else
    exit -1
  fi
fi

echo " "
echo "Running script for downloading the source code for MUMPS"
echo " "

rm -f MUMPS*.tgz

echo "Downloading the source code from ..."
$wgetcmd http://mumps.enseeiht.fr/MUMPS_${mumps_ver}.tar.gz

echo "Uncompressing the tarball..."
gunzip -f MUMPS_${mumps_ver}.tar.gz

echo "Unpacking the source code..."
tar xf MUMPS_${mumps_ver}.tar

echo "Deleting the tar file..."
rm MUMPS_${mumps_ver}.tar

rm -rf MUMPS
mv MUMPS_${mumps_ver} MUMPS

#uname=`uname`
#case "$uname" in
#  MINGW* | CYGWIN*)
#    echo "Applying a patch for version 4.7.3"
#    patch -p0 < mumps_4.7.3.Win.patch
#  ;;
#esac

echo " "
echo "Done downloading the source code for MUMPS."
echo " "

echo " "
echo "Verify that there are no error message in the output above."
