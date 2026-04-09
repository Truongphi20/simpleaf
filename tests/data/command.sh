#!/bin/bash
lldb ./target/debug/simpleaf -- quant  \
		   -c 10xv3 \
		   -t 8     \
		   -1 selected_R1_reads.fastq \
		   -2 selected_R2_reads.fastq     \
		   -i index     \
		   -u -r cr-like     \
		   -m index/t2g_3col.tsv     \
		   -o simpleaf_quant
