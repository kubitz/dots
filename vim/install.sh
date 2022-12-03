#!/bin/bash

# Check if the nvim install file already exists
if [ -f ~/.config/nvim/init.vim ]; then
  # If it exists, exit the script
  echo "nvim install file already exists"
  exit 1
fi

# Create the nvim config directory if it does not exist
if [ ! -d ~/.config/nvim ]; then
  mkdir -p ~/.config/nvim
fi

# Create the nvim install file with the given contents
cat > ~/.config/nvim/init.vim <<EOF
set runtimepath^=~/.vim runtimepath+=~/.vim/after
let &packpath = &runtimepath
source ~/.vimrc
EOF

