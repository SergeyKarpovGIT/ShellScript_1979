#!/usr/bin/env bash

option=$1
case $option in
  vimset)
    if [ -f ~/.vimrc ] && [ -d ~/.vim ]; then
      echo "Vim is already configured"
      exit 0
    else
      if \
      cp -f vimAddons/.vimrc ~/.vimrc && \
      mkdir ~/.vim && \
      mkdir ~/.vim/colors && \
      cp -f vimAddons/retrobox.vim ~/.vim/colors/retrobox.vim; then \
        echo "Vim configurations restored"
      else
        exit 1
      fi
    fi
    ;;
  *)
    echo "Availaible option: vimset"
    ;;
esac
