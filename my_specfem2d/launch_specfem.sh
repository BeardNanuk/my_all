#!/bin/sh


rm mesherz solverz 

./bin/xmeshfem2D >> mesherz

NPROC=4

mpirun -n $NPROC ./bin/xspecfem2D >> solverz



