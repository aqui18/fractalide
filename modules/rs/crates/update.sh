#! /usr/bin/env nix-shell
#! nix-shell -i bash -p carnix cargo
cargo generate-lockfile &&
carnix Cargo.lock -o crates.nix
