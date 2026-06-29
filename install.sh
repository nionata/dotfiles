#!/bin/sh
# Sets up dotfile symlinks and clones required repos.
# Does not handle package installation or OS-specific setup.
# Idempotent: safe to re-run as it skips steps that are already complete.

DOTFILES="$HOME/Developer/dotfiles"
FILES=(.zshrc .gitconfig .zprofile .zshenv)

NOTES="$HOME/Developer/notes"
if [ ! -d "$NOTES" ]; then
  echo "Cloning notes repo..."
  git clone git@github.com:nionata/notes.git "$NOTES"
  echo "Cloned notes → $NOTES"
else
  echo "Notes repo already exists, skipping clone"
fi

for file in "${FILES[@]}"; do
  target="$HOME/$file"
  source="$DOTFILES/$file"

  # skip if symlink already points to the right target
  if [ -L "$target" ] && [ "$(readlink "$target")" = "$source" ]; then
    echo "$file already linked, skipping"
    continue
  fi

  # back up any existing file or broken symlink before replacing
  if [ -e "$target" ] || [ -L "$target" ]; then
    mv "$target" "$target.bak"
    echo "Backed up $file → $file.bak"
  fi

  ln -s "$source" "$target"
  echo "Linked $file → $target"
done
