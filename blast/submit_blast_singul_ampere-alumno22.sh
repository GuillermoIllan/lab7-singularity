#!/bin/bash
#
#SBATCH -p hpc-bio-ampere
#SBATCH --chdir=/home/alumno22
#SBATCH -J advanced
#SBATCH --cpus-per-task=1
#SBATCH --mail-type=NONE    #END/START/NONE
#SBATCH --mail-user=MAIL@um.es

#cargar el modulo de singularity
module load singularity/3.8.0

#descomprimir los datos
gunzip -c zebrafish.1.protein.faa.gz > zebrafish.1.protein.faa

#Preparacion de la base de datos
./blast_2.9.0--pl526h3066fca_4.sif makeblastdb -in zebrafish.1.protein.faa -dbtype prot

#Alineacion
./blast_2.9.0--pl526h3066fca_4.sif blastp -query P04156.fasta -subject zebrafish.1.protein.faa -out results-blast.txt

#quitar el modulo
module unload singularity/3.8.0

