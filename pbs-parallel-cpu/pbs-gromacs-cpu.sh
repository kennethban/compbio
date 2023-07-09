#!/bin/bash

#PBS -N gromacs_cpu_job
#PBS -l select=1:ncpus=24:mem=128G:mpiprocs=24
#PBS -l walltime=12:00:00
#PBS -j oe
#PBS -q normal
#PBS -P personal

module load gromacs/2022.1

cd $PBS_O_WORKDIR

export OMP_NUM_THREADS=1

mpirun -np 24 -v gmx_mpi mdrun -s benchMEM.tpr -nsteps -1 -maxh 0.1 -resethway -noconfout


