# ~/.bashrc: executed by bash(1) for non-login shells
# Emil Abraham's bashrc
# This will source different bashrc's based on the operating system

#general configurations

#Initial variables
OS="Unknown"

#ssh onto my server
alias pestilence="ssh honestemu@66.228.40.92"

#ssh onto americankna server
alias famine="ssh root@45.55.42.150"

#ssh onto my seedbox
alias seedbox="ssh honestemu@hypnos.feralhosting.com"

export EDITOR="vim"

#Determine the OS
case $OSTYPE in
  "linux-gnu")
    OS="Linux";;
  "darwin"*)
    OS="OSX";;
  *)
    OS=$OSTYPE
    echo "$OS is not supported. Edit ~/.bashrc and add a configuration case."
esac

#OS based configurations
if [ $OS = "Linux" ]; then
  source ~/dotfiles/bashrc_linux
elif [ $OS = "OSX" ]; then
  #Colorization of ls
  alias ls="ls -G"
  export SOURCE_DIRECTORY=$HOME/src
  #uncomment this to use the default bashrc_osx
#  source ~/dotfiles/bashrc_osx
fi

source ~/.git-completion.bash

# Load "Platform" configuration
platformrc_file=$HOME/.platformrc;
if [ -e $platformrc_file ]; then
  source $platformrc_file;
fi
