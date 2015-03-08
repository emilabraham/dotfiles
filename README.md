#Purpose

This folder contains my personal dotfiles that configure the terminal to the
way that I like it.

This script should replace the current dotfiles on the system with mine. It will
also save the old dotfiles into a folder called `dotfilesOld`. All of my
dotfiles are symbolically linked to the proper hidden files in the home folder.


##Installation
*NOTE* Only tested and proven to work on Ubuntu with bash. For example, I tried
to run it on a Debian Linode, but Debian looks at `/etc/vim/vimrc` rather than
`~/.vimrc`.  Feel free to mess around.

Clone this repository into your home folder if you would like to use my
dotfiles.

In order to install my configurations, all you have to run is the following
command from the dotfiles directory you cloned:

`sh install.sh`


##Customization

In order to pick and choose which dotfiles are linked, all you have to do is
modify the install.sh script. There is a variable called `files` which you
can modify which controls what files are symbolically linked.
