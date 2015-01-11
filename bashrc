# ~/.bashrc: executed by bash(1) for non-login shells.
# Emil Abraham's bashrc

###############################################################################
#global configurations
###############################################################################

#Turns on color syntax for ls.
alias ls="ls --color"

#ssh onto my server
alias pestilence="ssh -X honestemu@66.228.40.92"

###############################################################################
#pestilence configurations
###############################################################################

#Directory for my personal website directory.
ppdir="~/public/emilabraham.com/personalpage"

#Alias to quickly change to my personal website directory.
alias personalpage="cd $ppdir"

#Alias to quickly deploy my personal website.
alias deploy_personalpage="python $ppdir/manage.py validate;
                           sudo service apache2 restart"
