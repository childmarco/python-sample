#
# Cookbook Name:: python-env
# Recipe:: default
#
# Copyright 2016, YOUR_COMPANY_NAME
#
# All rights reserved - Do Not Redistribute
#
node['python-env']['yum-pkg'].each do |pkg|
  package pkg do
    action :install
  end
end

git "/home/#{node['python-env']['user']}/.pyenv" do
  repository node["python-env"]["pyenv_url"]
  action :sync
  user node['python-env']['user']
  group node['python-env']['group']
end

template ".bash_profile" do
  source ".bash_profile.rb"
  path "/home/#{node['python-env']['user']}/.bash_profile"
  mode 0644
  owner node['python-env']['user']
  group node['python-env']['group']
  not_if "grep pyenv ~/.bash_profile", :environment => {:'HOME' => "/home/#{node['python-env']['user']}"}
end

execute "pyenv install #{node['python-env']['version3']}" do
  command "pyenv install #{node['python-env']['version3']}"
  user node['python-env']['user']
  group node['python-env']['group']
  environment 'HOME' => "/home/#{node['python-env']['user']}"
end

execute "pyenv install #{node['python-env']['version2']}" do
  command "pyenv install #{node['python-env']['version2']}"
  user node['python-env']['user']
  group node['python-env']['group']
  environment 'HOME' => "/home/#{node['python-env']['user']}"
end
