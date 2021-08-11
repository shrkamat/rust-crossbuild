#!/bin/bash

cargo build --release

# not suure why cargo strip is not working for cross compilers
cargo strip

/opt/BLD_SAM_BCM_MIPS4K_LNUX_ASTRO_06/platform_cfg/linux/compiler/brcm_gcc_x86_linux_06/bin/aarch64-linux-gnu-strip ./target/aarch64-unknown-linux-gnu/release/cross
file ./target/aarch64-unknown-linux-gnu/release/cross
readelf -d ./target/aarch64-unknown-linux-gnu/release/cross
du -sh ./target/aarch64-unknown-linux-gnu/release/cross
