#!/bin/bash

cargo build --release

strip ./target/release/cross
./target/release/cross
du -sh ./target/release/cross
