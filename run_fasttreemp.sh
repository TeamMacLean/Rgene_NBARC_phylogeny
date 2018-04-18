#!/bin/bash

source fasttree-2.1.9

srun FastTreeMP -boot 1000 -log fasttreemp.log -lg -refresh 0.8 -close 0.75 -topm 1.0  -slow -bionj -out all_NB-ARC_tree.newark all_NB-ARC_clustalo.fasta
