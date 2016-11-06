#
# Cookbook Name:: python-env
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
# .bash_profile

# Get the aliases and functions
if [ -f ~/.bashrc ]; then
        . ~/.bashrc
fi

# User specific environment and startup programs
PATH=$PATH:$HOME/bin
export PYENV_ROOT=$HOME/.pyenv
export PATH=$PYENV_ROOT/bin:$PATH
eval "$(pyenv init -)"

alias tfpy='LD_LIBRARY_PATH=~/tflib/lib64/:~/tflib/usr/lib64/ ~/tflib/lib64/ld-2.17.so /home/vagrant/.pyenv/versions/3.5.0/bin/python'
