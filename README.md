#dotfiles

This folder contains my personal dotfiles that configure the terminal to the
way that I like it.

This script should replace the current dotfiles on the system with mine. It will
also save the old dotfiles into a folder called `dotfilesOld`. All of my
dotfiles are symbolically linked to the proper hidden files in the home folder.


##Installation
Clone this repository into your home folder if you would like to use my
dotfiles.

In order to install the configurations, all you have to run is the following
command from the dotfiles directory you cloned:

`sh install.sh`


##Customization
In order to pick and choose which dotfiles are linked, all you have to do is
modify the install.sh script. There is a variable called `files` which you
can modify to control what files are symbolically linked.

###vim
You can add vim plugins to the folder `vim/bundles`. This will by handled by the
vim plugin, [pathogen](https://github.com/tpope/vim-pathogen). In order to sync
them up with the git repository, just add them as a submodule:

`git submodule add <git_clone_repository> <vim/bundle/<repository_name>/`
