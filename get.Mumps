#!/bin/sh

wgetcount=`which wget 2>/dev/null | wc -w`
if test ! $wgetcount = 1; then
  echo "Utility wget not found in your PATH."
  exit -1
fi

echo " "
echo "Running script for downloading the source code for MUMPS"
echo " "

rm -f MUMPS*.tgz

mumps_ver=4.7

echo "Downloading the source code from ..."
#wget http://graal.ens-lyon.fr/MUMPS/MUMPS_${mumps_ver}.tar.gz
wget http://mumps.enseeiht.fr/MUMPS_${mumps_ver}.tar.gz

echo "Uncompressing the tarball..."
gunzip -f MUMPS_${mumps_ver}.tar.gz

echo "Unpacking the source code..."
tar xf MUMPS_${mumps_ver}.tar

echo "Deleting the tar file..."
rm MUMPS_${mumps_ver}.tar

echo "Applying a patch for version 4.6.4"
sed -e 's/         id%DKEEP(1) = ZERO/         id%DKEEP(1) = -1.0/' MUMPS_${mumps_ver}/src/dmumps_part5.F > bla
mv bla MUMPS_${mumps_ver}/src/dmumps_part5.F

mv MUMPS_${mumps_ver} MUMPS

echo " "
echo "Done downloading the source code for MUMPS."
echo " "

