#
# Cookbook Name:: python-env
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#

default['python-env']['user']             = "vagrant"
default['python-env']['group']            = "vagrant"
default['python-env']['version']          = "3.5.0"
default['python-env']['version']          = "2.7.11"
default["python-env"]["pyenv_url"]        = "https://github.com/yyuu/pyenv.git"
# default["python-env"]["python-build_url"] = "https://github.com/yyuu/pyenv.git"
default["python-env"]["yum-pkg"]          = ["git",
                                             "vim",
                                             "openssl-devel",
                                             "gcc",
                                             # "sqlite-devel",
                                             # "gcc-c++",
                                             # "readline-devel",
                                             # "zlib-devel",
                                             # "libcurl-devel",
                                             # "libffi-devel",
                                             # "readline",
                                             # "readline-devel",
                                             "wget"]
