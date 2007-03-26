Installation of the Mumps linear solver within COIN.

Mumps is a MUltifrontal Massively Parallel sparse direct Solver.

Please visit the home page:

Home page: http://graal.ens-lyon.fr/MUMPS/

**********************************************************************
Note: It is YOUR RESPONSIBILITY to ensure that you are entitled to
      download and use this third party package.
**********************************************************************

If you are working under Unix/Linux-like system and you have `wget'
installed, you can downloaded the required source code for MUMPS
by executing the included script `get.Mumps' in this directory.

Otherwise, follow those instructions:

You may download

http://graal.ens-lyon.fr/MUMPS/MUMPS_4.6.4.tar.gz

and unpack it in this directory:

gunzip MUMPS_4.6.4.tar.gz
tar xf MUMPS_4.6.4.tar

You will need to change line 4069 in the file
MUMPS_4.6.4/src/dmumps_part5.F from

         id%DKEEP(1) = ZERO

to

         id%DKEEP(1) = -1.0

Finally, rename the MUMPS_4.6.4 directory just to be MUMPS:

mv MUMPS_4.6.4 MUMPS
