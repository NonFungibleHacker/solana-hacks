#!/bin/bash
cargo build-bpf --manifest-path=./Cargo.toml --bpf-out-dir=./target/so
solana program deploy ./target/so/casting_truncation.so
RUST_BACKTRACE=1 cargo run --manifest-path=./poc/Cargo.toml --target-dir=./target/