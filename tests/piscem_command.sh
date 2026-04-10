#!/bin/bash

rust-lldb ./piscem/target/debug/piscem -- map-sc --index tests/data/index/piscem_idx \
                                              --threads 1 \
                                              -o simpleaf_quant/af_map \
                                              --max-ec-card 4096 \
                                              --skipping-strategy permissive \
                                              --max-hit-occ 256 \
                                              --max-hit-occ-recover 1024 \
                                              --max-read-occ 2500 \
                                              -1 tests/data/selected_R1_reads.fastq \
                                              -2 tests/data/selected_R2_reads.fastq \
                                              --geometry chromium_v3