#!/usr/bin/env bash

# Basic setup for vim for systems without nvim installed

mkdir -p ~/.vim/pack/themes/start
cd ~/.vim/pack/themes/start
git clone https://github.com/dracula/vim.git dracula

cat > ~/.vimrc << EOF
set number
set colorcolumn=80
set tabstop=4
set shiftwidth=4
set expandtab

packadd! dracula
syntax enable
colorscheme dracula

EOF

