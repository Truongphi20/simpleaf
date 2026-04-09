#!/usr/bin/env bash
set -e

echo "Building piscem..."
cd piscem
cargo build

echo "Building simpleaf..."
cd ..
cargo build --workspace --bins

# Set paths
./target/debug/simpleaf set-paths   \
        --alevin-fry $(pwd)/target/debug/alevin-fry   \
        --piscem $(pwd)/piscem/target/debug/piscem