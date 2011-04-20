#!/bin/bash
#
# Install local vim configs
#
if [[ -h $HOME/.vimrc.local ]]; then
  rm $HOME/.vimrc.local
elif [[ -e $HOME/.vimrc.local ]]; then
  echo "vimrc.local exists, moving to $HOME/.vimrc.local.orig"
  mv $HOME/.vimrc.local $HOME/.vimrc.local.orig
fi
if [[ -h $HOME/.gvimrc.local ]]; then
  rm $HOME/.gvimrc.local
elif [[ -e $HOME/.gvimrc.local ]]; then
  echo "gvimrc.local exists, moving to $HOME/.gvimrc.local.orig"
  mv $HOME/.gvimrc.local $HOME/.gvimrc.local.orig
fi
ln -s $DOTFILES/vim/gvimrc.local $HOME/.gvimrc.local
ln -s $DOTFILES/vim/vimrc.local $HOME/.vimrc.local
