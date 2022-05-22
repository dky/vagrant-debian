#!/bin/bash

# hardest one last, install rust-analyzer
git clone https://github.com/rust-analyzer/rust-analyzer && cd rust-analyzer
cargo xtask install --server
