#!/bin/bash

# Cambia al directorio donde se encuentra el ejecutable
cd && cd xelis-blockchain && git pull && cargo build --bin xelis_miner && cd target/debug && ./xelis_miner --daemon-address 83.38.166.172:8080 -m xel:rmdgrx0lplkf50f850d5z3rw7pz9y74p0ycrhkmywldsgg9uhfvsqkhs7s0

