#!/bin/sh
DOTFILES="$HOME/Developer/dotfiles"
FILES=(.zshrc .gitconfig)

for file in "${FILES[@]}"; do
  target="$HOME/$file"
  if [ -e "$target" ] || [ -L "$target" ]; then
    mv "$target" "$target.bak"
    echo "Backed up $file → $file.bak"
  fi
  ln -s "$DOTFILES/$file" "$target"
done
