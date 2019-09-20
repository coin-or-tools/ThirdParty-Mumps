Installation of the Mumps linear solver within COIN-OR.

Mumps is a MUltifrontal Massively Parallel sparse direct Solver.

Please visit the home page:

Home page: http://mumps.enseeiht.fr

and make sure you read the conditions on distributing MUMPS
in Chapter 12 of the MUMPS Users' Guide:

http://mumps.enseeiht.frdoc/userguide_4.10.0.pdf


**********************************************************************
Note: It is YOUR RESPONSIBILITY to ensure that you are entitled to
      download and use this third party package.
**********************************************************************

If you are working under Unix-like systems, you can downloaded the
required source code for MUMPS by executing the included script
`get.Mumps' in this directory.

If using that script doesn't work for you, follow those instructions:

Download Mumps 4.10:

http://mumps.enseeiht.fr/MUMPS_4.10.0.tar.gz

and unpack it in this directory:

gunzip MUMPS_4.10.0.tar.gz
tar xf MUMPS_4.10.0.tar

Then, rename the MUMPS_4.10.0 directory just to be MUMPS:

mv MUMPS_4.10.0 MUMPS

Finally, apply some changes to improve MPI compatibility of MUMPS and
work around a bug in MUMPS:

patch -p0 < mumps.patch
patch -p0 < mumps_mpi.patch
mv MUMPS/libseq/mpi.h MUMPS/libseq/mumps_mpi.h
