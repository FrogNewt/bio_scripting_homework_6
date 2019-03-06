#!/bin/bash

for i in *.cds
do
basename=`basename ${i} .cds`

# Truncates description, gives summary and histogram.
# Note--there's also some way to do this with "awk" (I think awk normally delimits lines by spaces anyhow) but it was more effort than this
cat ${i} | cut -d ' ' -f 1 | get_fasta_stats.pl -g -T > ${basename}_BOTELLO.dna
# Preps for transeq
cat ${i} | cut -d ' ' -f 1 > ${basename}_removable_BOTELLO.dna

# Gives amino acid
transeq -sformat pearson -frame 1 -sequence ${basename}_removable_BOTELLO.dna -outseq ${basename}_BOTELLO.pep
done

for i in *.pep
do
base=`basename ${i} _BOTELLO.pep`
# Produces a unique summary for each file
get_fasta_stats.pl -t ${base}_BOTELLO.pep > ${base}_BOTELLO.summary
done

# Below is the (commented-out) code to remove the no-longer-useful files, but I'm afraid to actually use it in case I need to go back and switch something.
# rm *.pep
# rm *.cds
