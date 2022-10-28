#!/bin/sh

for d in autoload bundle
do
  mkdir -p $HOME/.vim/$d
done

# vimrc

vimrc_file=$HOME/.vimrc

if [ "$1" = "-lite" ]
then
  vimrc_url=
else
  vimrc_url=
fi

if [ -f $vimrc_file ]
then
  echo "$vimrc_file already exists"
else
  curl -LSso $vimrc_file $vimrc_url
fi

# pathogen

pathogen_file=$HOME/.vim/autoload/pathogen.vim
pathogen_url=https://tpo.pe/pathogen.vim

if [ -f $pathogen_file ]
then
  echo "$pathogen_file already exists"
else
  curl -LSso $pathogen_file $pathogen_url
fi

# gitgutter

gitgutter_dir=$HOME/.vim/bundle/gitgutter
gitgutter_url=https://github.com/airblade/vim-gitgutter.git

if [ -d $gitgutter_dir ]
then
  echo "$gitgutter_dir already exists"
else
  git clone $gitgutter_url $gitgutter_dir
fi

# nerdtree

nerdtree_dir=$HOME/.vim/bundle/nerdtree
nerdtree_url=https://github.com/preservim/nerdtree.git

if [ -d $nerdtree_dir ]
then
  echo "$nerdtree_dir already exists"
else
  git clone $nerdtree_url $nerdtree_dir
fi

# lightline

lightline_dir=$HOME/.vim/bundle/lightline
lightline_url=https://github.com/itchyny/lightline.vim.git

if [ -d $lightline_dir ]
then
  echo "$lightline_dir already exists"
else
  git clone $lightline_url $lightline_dir
fi
