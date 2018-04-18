#!/bin/bash

source clustalo-1.1.0

srun clustalo --force --in all_NB-ARC.fasta --infmt=fasta --seqtype=Protein --full-iter --outfile=all_NB-ARC_clustalo.fasta --outfmt=fasta --iterations=1000 --auto --threads 128

source raxml-8.2.11_1

srun raxmlHPC-PTHREADS-SSE3 -m PROTCATBLOSUM62 -s all_NB-ARC_clustalo.fasta -n NBARC -f a -x 1000 -N autoMR -T 320 -p 1000
