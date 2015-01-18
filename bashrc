# ~/.bashrc: executed by bash(1) for non-login shells
# Emil Abraham's bashrc

###############################################################################
#general configurations
###############################################################################

#Initial variables
OS="Unknown"

#ssh onto my server
alias pestilence="ssh -X honestemu@66.228.40.92"

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
    sudo service apache2 restart"
  fi

elif [ $OS = "OSX" ]; then
  #Colorization of ls
  alias ls="ls -G"

  ##############################################################################
  #Hades Configurations
  ##############################################################################
  if [ $HOSTNAME = "Hades.local" ]; then
    #Alias to start tomcat
    alias tomcat="sudo ~/dev/app/tomcat7/bin/catalina.sh jpda run"

    #Alias to start nodejs middle tier
    alias startnode="cd ~/dev/applause-fe-api; node app.js"

    #Alias to start runscope
    alias runscopeagent="cd ~/Downloads; ./runscope-radar -f radar.conf"
  fi
fi
