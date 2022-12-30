#!/bin/bash

module load anaconda/2020.11
#2.a
echo ejecutando hostname en ibsen
hostname
echo ejecuntado hostname en my-python.sif
./my-python.sif hostname
echo
#2.b
echo ejecutando cat en ibsen
cat /etc/os-release
echo ejecutando cat en my-python.sif
./my-python.sif cat /etc/os-release
echo
#2.c
echo ejecutando pwd en ibsen
pwd
echo ejecuntado pwd en my-python.sif
./my-python.sif pwd
echo
#2.d
echo ejecutando ls en ibsen
ls -l
echo ejecutando ls en my-python.sif
./my-python.sif ls -l
echo
#2.e
echo ejecutando python -version en ibsen
python --version
echo ejecutando python -version en my-python.sif
./my-python.sif python --version
echo
#2.f
echo ejecutando ipython en ibsen
ipython $HOME/lab7-singularity/source/kmer-solution.ipynb
echo ejecutando ipython en my-python.sif
./my-python.sif ipython /home/kmer-solution.ipynb

module unload anaconda/2020.11
