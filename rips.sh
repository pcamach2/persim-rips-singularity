#!/bin/bash
#
# script for running persistent homology prep single subject in container
#
# bind directories for data and toolboxes on run, then specify their paths in this script
# bind working directory for functions
#
# singularity run --bind /local/path/to/workingDirectory:/work,/local/path/to/bctoolbox:/bctoolbox,/local/path/to/PosCorr.mat:/datain matlab-R2019a.sif rips.sh

cd /datain

matlab -nodisplay -nosplash -nodesktop -r "addpath('/home/matlab');addpath('/bctoolbox');addpath('/datain');addpath('/work');rips_prep();exit;" | tail -n +11
