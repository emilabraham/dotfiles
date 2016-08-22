# ~/.bashrc: executed by bash(1) for non-login shells
# Emil Abraham's bashrc

###############################################################################
#general configurations
###############################################################################

#Initial variables
OS="Unknown"

#ssh onto my server
alias pestilence="ssh honestemu@66.228.40.92"

#ssh onto americankna server
alias famine="ssh root@45.55.42.150"

#ssh onto my seedbox
alias seedbox="ssh honestemu@grace.baconseed.org"

#Run android studio
alias android="~/Applications/android-studio/bin/studio.sh &"

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

#Color support
# Turn on 256 color support...
if [ "x$TERM" = "xxterm" ]
then
  export TERM="xterm-256color"
fi

#Tell tmux to assume 256 color
alias tmux="TERM=screen-256color-bce tmux"

#Shortcut for tar
function extract {
 if [ -z "$1" ]; then
    # display usage if no parameters given
    echo "Usage: extract <path/file_name>.<zip|rar|bz2|gz|tar|tbz2|tgz|Z|7z|xz|ex|tar.bz2|tar.gz|tar.xz>"
 else
    if [ -f "$1" ] ; then
        NAME=${1%.*}
        #mkdir $NAME && cd $NAME
        case "$1" in
          *.tar.bz2)   tar xvjf ./"$1"    ;;
          *.tar.gz)    tar xvzf ./"$1"    ;;
          *.tar.xz)    tar xvJf ./"$1"    ;;
          *.lzma)      unlzma ./"$1"      ;;
          *.bz2)       bunzip2 ./"$1"     ;;
          *.rar)       unrar x -ad ./"$1" ;;
          *.gz)        gunzip ./"$1"      ;;
          *.tar)       tar xvf ./"$1"     ;;
          *.tbz2)      tar xvjf ./"$1"    ;;
          *.tgz)       tar xvzf ./"$1"    ;;
          *.zip)       unzip ./"$1"       ;;
          *.Z)         uncompress ./"$1"  ;;
          *.7z)        7z x ./"$1"        ;;
          *.xz)        unxz ./"$1"        ;;
          *.exe)       cabextract ./"$1"  ;;
          *)           echo "extract: '$1' - unknown archive method" ;;
        esac
    else
        echo "'$1' - file does not exist"
    fi
fi
}

################################################################################
#OS based configurations
################################################################################
if [ $OS = "Linux" ]; then
  #Turns on color syntax for ls
  alias ls="ls --color"

  ##############################################################################
  #pestilence configurations
  ##############################################################################

  if [ $HOSTNAME = "pestilence" ]; then
    #Directory for my personal website directory
    ppdir="~/public/emilabraham.com/personalpage"

    #Alias to quickly change to my personal website directory
    alias personalpage="cd $ppdir"

    #Alias to quickly change to americankna directory
    alias americankna="cd ~/public/emilabraham.com/americankna"

    #Alias to quickly deploy my personal website
    alias deploy_personalpage="python $ppdir/manage.py validate;
    python $ppdir/manage.py test; sudo service apache2 restart"
  fi

elif [ $OS = "OSX" ]; then
  #Colorization of ls
  alias ls="ls -G"
fi

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

export NVM_DIR="/Users/eabraham/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

source /opt/boxen/env.sh
