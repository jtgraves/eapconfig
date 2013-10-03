#!/bin/bash
#
# Create symlinks in local filesystem for each repository file listed

export REPODIR=$(pwd)
export HN=$(hostname)

source bash/linking_functions.sh

create_symlinks () {
    link_to_git_repo $HOME/.bashrc   $REPODIR/dotfiles/bashrc
    link_to_git_repo $HOME/.screenrc $REPODIR/dotfiles/screenrc
    link_to_git_repo $HOME/.vimrc    $REPODIR/dotfiles/vimrc
    link_to_git_repo $HOME/.zshrc    $REPODIR/dotfiles/zshrc
}

SUCCESS_COUNTER=0
create_symlinks
echo "  OK: $SUCCESS_COUNTER files"
