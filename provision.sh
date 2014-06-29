#!/bin/bash

function install_ruby() {
  sudo apt-get install -y python-software-properties
  sudo apt-add-repository -y ppa:brightbox/ruby-ng
  sudo apt-get update
  sudo apt-get install -y ruby2.1
}

sudo apt-get update
sudo apt-get install -y git vim build-essential

install_ruby

bundle install
