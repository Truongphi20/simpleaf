#!/bin/bash
rust-lldb ./target/debug/simpleaf -- quant  \
		   -c 10xv3 \
		   -t 1     \
		   -1 tests/data/selected_R1_reads.fastq \
		   -2 tests/data/selected_R2_reads.fastq     \
		   -i tests/data/index     \
		   -u -r cr-like     \
		   -m tests/data/index/t2g_3col.tsv     \
		   -o simpleaf_quant
