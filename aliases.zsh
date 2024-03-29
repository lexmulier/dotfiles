# General shortcuts
alias ll='ls -la'

# Directories
alias dotfiles="cd $DOTFILES"

# Dev shortcuts
alias venv="python3 -m venv .venv && source .venv/bin/activate"

# Git aliases
alias hooks='bash .git/hooks/pre-commit'
alias amend="git commit --amend --no-edit"

# Work shortcuts
alias vf="poetry run vf"
