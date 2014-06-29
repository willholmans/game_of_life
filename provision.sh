#!/bin/bash

install_chruby() {
  if command_exists 'chruby'; then
    CHRUBY_FILE='chruby-0.3.8.tar.gz'
    TAR_PATH="/root/$CHRUBY_FILE"

    sudo wget -O $TAR_PATH https://github.com/postmodern/chruby/archive/v0.3.8.tar.gz
    sudo tar -xzvf $TAR_PATH -C /root/
    sudo -s 'cd /root/chruby-0.3.8/; make install'
    sudo make install
  else
    echo "chruby already installed."
  fi
}

command_exists() {
  command $1 &> /dev/null
}

sudo apt-get update
sudo apt-get install -y git vim build-essential

install_chruby

bundle install
