# ~/.bashrc: executed by bash(1) for non-login shells
# Emil Abraham's bashrc

###############################################################################
#general configurations
###############################################################################

#Initial variables
OS="Unknown"

#ssh onto my server
alias pestilence="ssh honestemu@66.228.40.92"

#ssh onto my seedbox
alias seedbox="ssh honestemu@grace.baconseed.org"

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
  ENV1="hawkins.corp.applause.com"
  ENV2="Hades.local"

  ##############################################################################
  #hawkins/Hades Configurations
  ##############################################################################

  if [ $HOSTNAME = $ENV1 ] || [ $HOSTNAME = $ENV2 ]; then
    #Alias to start tomcat
    alias tomcat="sudo ~/dev/app/tomcat7/bin/catalina.sh jpda run"

    #Alias to start nodejs middle tier
    alias startnode="cd ~/dev/applause-fe-api; node app.js"

    #Alias to start runscope
    alias runscopeagent="cd ~/Downloads; ./runscope-radar -f radar.conf"

    #Alias to start boot2docker with proper environment variables
    alias startboot2dock="boot2docker start;
    export DOCKER_HOST=tcp://192.168.59.103:2376
    export DOCKER_CERT_PATH=/Users/eabraham/.boot2docker/certs/boot2docker-vm
    export DOCKER_TLS_VERIFY=1"
  fi
fi

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"


