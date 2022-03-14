#!/bin/bash

#SBATCH -p dgx       #HPC-partition
#SBATCH -N 1         #number-of-node
#SBATCH -t 00:10:00  #time-to-use
#SBATCH -J keras-singularity-test   #job-name
#SBATCH -A INSERT_PROJECTNAME  #project-account

CUDAxxxx=11

module purge
module load Singularity
singularity exec --nv newsif.sif python keras_example.py