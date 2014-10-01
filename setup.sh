#!/bin/bash

# gdb pretty print STL-container
sudo apt-get install subversion
cd ~
svn checkout svn://gcc.gnu.org/svn/gcc/trunk/libstdc++-v3/python
sudo mv ~/python/* /usr/share/gdb/python
sudo mv ~/python/.svn/ /usr/share/gdb/python

# YouCompleteMe setup
# http://www.alexeyshmalko.com/2014/youcompleteme-ultimate-autocomplete-plugin-for-vim/
sudo apt-get install curl
sudo apt-get install cmake
sudo apt-get install python-dev
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
  curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
cd ~/.vim/bundle && \
  git clone git://github.com/tpope/vim-sensible.git
cd ~/.vim/bundle
git clone https://github.com/Valloric/YouCompleteMe.git
cd YouCompleteMe
git submodule update --init --recursive
./install.sh --clang-completer

# IPython setup
sudo apt-get install python-pip
sudo pip install ipython
