# Dot Files

This is my collection of configuration files (dotfiles). It also includes a
tool to install them in the correct place. I have tried to document why I
chose each setting. Maybe it is of use to someone else too.

## Usage

Depending on which OS/Machine you are run one of the following:

    make pi
    make arch
    make ubuntu

Then run

    cd ~/.vim/bundle
    ./get_plugins.sh

## Context

I am a software developer with a love for data science and embedded systems. I
prefer to run as much as possible from the command line.  The main tools I use
are:

- Vim (+ fugitive + slime)
- make
- git + tig
- C (gcc)
- gdb
- Python
- R
- task
- ssh
- tmux
- inkscape
- blender
- nb

This on Xubuntu.
Also works under Raspberry Pi OS.

My favourite console font: <https://dtinth.github.io/comic-mono-font/>

## Disclaimer

This repository contains some files from:

- Tim Pope <https://github.com/tpope/vim-pathogen>
- Vibhav Pant <https://github.com/vibhavp/dotty>

vi: spell spl=en
