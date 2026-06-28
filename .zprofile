# Required for brew-installed packages to be on PATH
eval "$(/opt/homebrew/bin/brew shellenv zsh)"

# OrbStack CLI and shell integration; no-ops if not installed
source ~/.orbstack/shell/init.zsh 2>/dev/null || :

# Load default SSH keys into the agent so they are available for forwarding into dev containers
ssh-add 2>/dev/null
