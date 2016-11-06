#
# Cookbook Name:: ruby-env
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

# export PATH="$HOME/.rbenv/bin:$PATH"
# export PATH="$HOME/.rbenv/versions/#{@versions}/$HOME/.rbenv/bin:$PATH"
# export PATH=$HOME/.rbenv/versions/<%= @version %>/bin:$HOME/.rbenv/bin:$PATH
# eval "$(rbenv init -)"