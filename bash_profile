# Emil Abraham's bash_profile

#Just use bashrc
source ~/.bashrc

# Load "Platform" configuration
platformrc_file=$HOME/.platformrc;
if [ -e $platformrc_file ]; then
  source $platformrc_file;
fi
