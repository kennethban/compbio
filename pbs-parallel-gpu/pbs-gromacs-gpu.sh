#!/bin/bash

#PBS -N gromacs_gpu_job
#PBS -l select=1:ngpus=1
#PBS -l walltime=12:00:00
#PBS -j oe
#PBS -q normal
#PBS -P personal

module load gromacs/2022.1-gpu

cd $PBS_O_WORKDIR

export OMP_NUM_THREADS=1

gmx mdrun -ntmpi 16 -nb gpu -pin on -v -s benchMEM.tpr -nsteps -1 -maxh 0.1 -resethway -noconfout
