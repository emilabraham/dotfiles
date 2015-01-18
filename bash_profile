# Emil Abraham's bash_profile

################################################################################
#general configurations
################################################################################
#Colorization of ls
alias ls="ls -G"

################################################################################
#Applause Configurations
################################################################################
#Alias to start tomcat
alias tomcat="sudo ~/dev/app/tomcat7/bin/catalina.sh jpda run"

#Alias to start nodejs middle tier
alias startnode="cd ~/dev/applause-fe-api; node app.js"

#Alias to start runscope
alias runscopeagent="cd ~/Downloads; ./runscope-radar -f radar.conf"
