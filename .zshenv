# Adds ~/.cargo/bin to PATH for cargo, rustc, rustup, and cargo-installed binaries
# No-ops if cargo is not installed (e.g. managed by Nix in dev containers)
[ -f "$HOME/.cargo/env" ] && . "$HOME/.cargo/env"

# Consolidate all claude config into a single dir instead of multiple ~/. paths
export CLAUDE_CONFIG_DIR=~/.config/claude
